require "rspec/time_stop/version"
require "rspec"

begin
  # workaround for activesupport 7.0.0
  # c.f. https://github.com/rails/rails/issues/43851
  require "active_support/isolated_execution_state"
rescue LoadError
end
require "active_support/testing/time_helpers"

RSpec.shared_context "rspec-time_stop", shared_context: :metadata do
  include ActiveSupport::Testing::TimeHelpers

  around(:each) do |example|
    travel_to(Time.now) do
      example.run
    end
  end
end

RSpec.configure do |rspec|
  rspec.include_context "rspec-time_stop", time_stop: true
end

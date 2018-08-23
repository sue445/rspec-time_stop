require "rspec/time_stop/version"
require "rspec"
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

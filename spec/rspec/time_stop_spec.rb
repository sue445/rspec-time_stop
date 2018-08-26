RSpec.describe RSpec::TimeStop do
  context "with :time_stop", :time_stop do
    it "current time is freezed" do
      before_time = Time.now
      sleep 1
      after_time = Time.now

      expect(after_time).to eq before_time
    end
  end

  context "without :time_stop" do
    it "current time is not freezed" do
      before_time = Time.now
      sleep 1
      after_time = Time.now

      expect(after_time).to be > before_time
    end

    it "current time is freezed when :time_stop is granted", :time_stop do
      before_time = Time.now
      sleep 1
      after_time = Time.now

      expect(after_time).to eq before_time
    end
  end
end

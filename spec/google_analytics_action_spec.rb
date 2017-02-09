describe Fastlane::Actions::GoogleAnalyticsAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The google_analytics plugin is working!")

      Fastlane::Actions::GoogleAnalyticsAction.run(nil)
    end
  end
end

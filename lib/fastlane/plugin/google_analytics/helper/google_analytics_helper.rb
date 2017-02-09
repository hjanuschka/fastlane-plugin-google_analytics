module Fastlane
  module Helper
    class GoogleAnalyticsHelper
      # class methods that you define here become available in your action
      # as `Helper::GoogleAnalyticsHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the google_analytics plugin helper!")
      end
    end
  end
end

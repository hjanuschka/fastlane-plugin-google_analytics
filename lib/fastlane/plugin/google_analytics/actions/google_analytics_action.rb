require 'staccato'
require 'staccato/adapter/logger'
module Fastlane
  module Actions
    class GoogleAnalyticsAction < Action
      def self.run(params)
        UI.important "Firing #{params[:type]} ⚡️"
        tracker(params).send(params[:type].to_s, params[:payload])
      end

      def self.tracker(params)
        Staccato.tracker(params[:ua], nil, ssl: true) do |c|
          # c.adapter = Staccato::Adapter::Logger.new(Staccato.ga_collection_uri, Logger.new(STDOUT), lambda {|params| JSON.dump(params)})
        end
      end

      def self.description
        "Fire universal Analytics"
      end

      def self.alias_used(action_alias, params)
        cat = action_alias.split("_").last
        params[:type] = cat
      end

      def self.aliases
        ["google_event", "google_pageview", "google_timing", "google_exception"]
      end

      def self.authors
        ["Helmut Januschka"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Lets you track stuff"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :ua,
                                   env_name: "GOOGLE_ANALYTICS_UA",
                                description: "Google Analytics UA",
                                   optional: false,
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :payload,
                                  env_name: "GOOGLE_ANALYTICS_payload",
                               description: "Google Analytics Payload",
                                  optional: false,
                                      type: Hash),
          FastlaneCore::ConfigItem.new(key: :type,
                                  env_name: "GOOGLE_ANALYTICS_TYPE",
                             default_value:  "pageview",
                               description: "pageview, event, timinig, exception",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end

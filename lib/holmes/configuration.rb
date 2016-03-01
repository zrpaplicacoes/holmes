# encoding: utf-8
module Holmes
  class Configuration
    ## Configurable Parameters

    # Slack notification Webhook URL
    # Which incoming webhook url will receive errors messages
    attr_accessor :slack_webhook_url

    # Slack notification channel
    # Which channel is configured the incoming webhook
    attr_accessor :slack_channel

    # Default errors to be rescued
    # Each error follows the pattern: {'<<error_code>>': [<<rescued_errors>>]}
    attr_accessor :rescued_errors

    def initialize
      @slack_webhook_url = ""
      @slack_channel = ""
      @rescued_errors = {
                           '404': [ActiveRecord::RecordNotFound, ActionController::RoutingError],
                           '500': [Exception]
                         }
    end
  end
end

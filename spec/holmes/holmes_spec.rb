# encoding: utf-8

describe Holmes do
  describe "#configure" do
    before(:each) do
      Holmes.configure do |config|
        config.slack_webhook_url = 'webhook.example.com'
        config.slack_channel = 'holmes-errors'
        config.rescued_errors = { '404': [ActionController::RoutingError]}
      end
    end

    it "correctly set all the configurable params" do
      expect(Holmes.configuration.slack_webhook_url).to be('webhook.example.com')
      expect(Holmes.configuration.slack_channel).to be('holmes-errors')
      expect(Holmes.configuration.rescued_errors).to be({ '404': [ActionController::RoutingError]})
    end
  end
end

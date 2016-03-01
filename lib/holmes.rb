require "rails"
require "active_record/railtie"
require "action_controller/railtie"
require "action_pack"

require "holmes/engine"
require "holmes/configuration"

module Holmes
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end

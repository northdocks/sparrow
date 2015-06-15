require 'active_support/version'
require 'sparrow/version'
require 'sparrow/configuration'
require 'sparrow/route_parser'
require 'sparrow/request_middleware'
require 'sparrow/response_middleware'
require 'sparrow/strategies/json_format_strategies/rack_body'
require 'sparrow/strategies/json_format_strategies/array_strategy'
require 'sparrow/railtie' if defined?(Rails)

module Sparrow
  class << self
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def reset_configuration
      @configuration = nil
    end
  end
end
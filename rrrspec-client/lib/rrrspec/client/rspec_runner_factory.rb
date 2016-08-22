require 'rrrspec/registry'
require 'rrrspec/client/rspec_runner'

module RRRSpec
  module Client
    class RSpecRunnerFactory

      def initialize
        @runner = RSpecRunner.new
      end

      def create(file_extension)
        return @runner if file_extension == '.rb'
      end
    end

    Registry.register_runner_factory RRRSpec::Client::RSpecRunnerFactory.new
  end
end

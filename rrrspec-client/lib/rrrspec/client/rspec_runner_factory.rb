require 'rrrspec/client/rspec_runner'

module RRRSpec
  module Client
    class RSpecRunnerFactory
      attr_reader :next_factory

      def initialize(successor)
        @next_factory = successor
        @runner = RSpecRunner.new
      end

      def create(file_extension)
        return @runner if file_extension == '.rb'
        return @runner if @next_factory == nil

        @next_factory.create file_extension
      end
    end
  end
end
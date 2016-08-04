require 'rrrspec/client/rspec_runner'

module RRRSpec
  module Client
    class RSpecRunnerFactory
      attr_reader :next_factory

      def initialize(successor)
        @next_factory = successor
      end

      def create(file_extension)
        unless Thread.current[:rspec3_runner]
          Thread.current[:rspec3_runner] = RSpecRunner.new
        end

        return Thread.current[:rspec3_runner] if file_extension == '.rb'
        return Thread.current[:rspec3_runner] if @next_factory == nil

        @next_factory.create file_extension
      end
    end
  end
end
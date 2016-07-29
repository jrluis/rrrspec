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
  end
end

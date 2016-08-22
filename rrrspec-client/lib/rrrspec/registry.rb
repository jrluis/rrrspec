require 'rrrspec/client/rspec_runner'

module RRRSpec
  module Registry

    @@runners = Hash.new

    def self.reset_runners
      @@runners = []
    end

    def self.register_runner(factory, file_extension)
      @@runners[file_extension] = factory
    end


    def self.get_runner(file_extension)
      @@runners[file_extension]
    end

  end

  Registry.register_runner RRRSpec::Client::RSpecRunner.new, '.rb'
end

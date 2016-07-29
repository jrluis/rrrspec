module RRRSpec
  module Registry

    @@runner_factories =[]

    def self.reset
      @@runner_factories = []
    end

    def self.register_runner_factory(factory)
      @@runner_factories << factory
    end


    def self.create_runner(file_extension)
      @@runner_factories.each do |factory|
        runner = factory.create(file_extension)
        return runner unless runner.nil?
      end

      nil
    end

  end
end

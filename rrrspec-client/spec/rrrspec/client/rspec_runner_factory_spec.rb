require 'spec_helper'

module RRRSpec
  module Client

    RSpec.describe RSpecRunnerFactory do
      let(:runner_factory) { RSpecRunnerFactory.new }
      let(:runner) { runner_factory.create '.rb' }

      subject { runner_factory }

      it 'should return the same runner' do
        expect(subject.create('.rb')).to eq runner
      end

      it 'should return nil' do
        expect(subject.create('.feature')).to be_nil
      end
    end

  end
end

require 'spec_helper'

module RRRSpec
  module Client

    RSpec.describe RSpecRunnerFactory do
      let(:runner_factory) { RSpecRunnerFactory.new nil }
      let(:runner) { runner_factory.create '.rb' }

      subject { runner_factory }

      it 'should return the same runner' do
        expect(subject.create('.rb')).to eq runner
      end
    end

    RSpec.context "when on the middle of the chain" do
      let(:next_factory) { double('factory') }
      let(:rspec_factory) { RSpecRunnerFactory.new next_factory }

      subject { rspec_factory }

      it 'should return RSpecRunner on .rb' do
        expect(subject.create('.rb')).to be_a RSpecRunner
      end

      it 'should invoke next factory' do
        expect(next_factory).to receive(:create).with('.xpto')
        subject.create('.xpto')
      end
    end

    RSpec.context "when on the end of the chain" do
      subject { RSpecRunnerFactory.new nil  }

      it 'should return RSpecRunner on any file extension' do
        expect(subject.create('.xpto')).to be_a RSpecRunner
      end
    end
  end
end

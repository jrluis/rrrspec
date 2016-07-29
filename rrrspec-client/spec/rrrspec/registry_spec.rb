module RRRSpec

  RSpec.describe Registry do
    subject { Registry }

    it 'should return a runner' do
      expect(subject.create_runner('.rb')).to be_truthy
    end

    it 'should return nil' do
      expect(subject.create_runner('.feature')).to be_falsey
    end
  end

end

# spec/caesar_convert_spec.rb
require './lib/caesar'

describe Caesar do
  describe '#convert' do
    it 'works with a small positive shift' do
      caesar = described_class.new
      expect(caesar.convert('abc', 2)).to eql('cde')
    end

    it 'works with a small negative shift' do
      caesar = described_class.new
      expect(caesar.convert('def', -3)).to eql('abc')
    end

    it 'works with mixed cases' do
      caesar = described_class.new
      expect(caesar.convert('HeLLo', 5)).to eql('MjQQt')
    end

    it 'works with spaces and special characters' do
      caesar = described_class.new
      expect(caesar.convert('Hello, world!', 2)).to eql('Jgnnq, yqtnf!')
    end

    it 'works with a large positive shift' do
      caesar = described_class.new
      expect(caesar.convert('abc', 53)).to eql('bcd')
    end

    it 'works with large negative shift' do
      caesar = described_class.new
      expect(caesar.convert('def', -53)).to eql('cde')
    end
  end
end
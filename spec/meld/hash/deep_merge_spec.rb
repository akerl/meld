require 'spec_helper'

describe Hash do
  let(:first) do
    { x: 4, y: { a: 6, b: 5 } }
  end
  let(:second) do
    { z: 9, y: { a: 9, c: 8 } }
  end
  let(:result) do
    { x: 4, y: { a: 9, b: 5, c: 8 }, z: 9 }
  end

  describe '#deep_merge!' do
    it 'merges subhashes' do
      first.deep_merge!(second)
      expect(first).to eql result
    end

    it 'overwrites original object' do
      copy = first.dup
      first.deep_merge!(second)
      expect(first).not_to eql copy
    end
  end

  describe '#deep_merge' do
    it 'merges subhashes' do
      third = first.deep_merge(second)
      expect(third).to eql result
    end

    it 'does not overwrite original object' do
      copy = first.dup
      first.deep_merge(second)
      expect(first).to eql copy
    end
  end
end

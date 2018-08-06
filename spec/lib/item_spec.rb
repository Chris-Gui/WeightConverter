require 'spec_helper'
require_relative '../../lib/item'

describe 'Item' do
  describe 'initialization' do
    let(:item) { Item.new('bike', 'l', 50)}

    it 'should assign value to attributes' do
      expect(item.name).to eq('bike')
      expect(item.unit).to eq('l')
      expect(item.weight).to eq(50)
    end
  end

  describe 'convert to' do
    let(:item) { Item.new('bike', 'l', 50)}

    it 'should convert weight from lbs to kgs' do
      item.convert_to('k')
      expect(item.unit).to eq('k')
      expect(item.weight).to eq(50 * 0.45359237)
    end
  end
end
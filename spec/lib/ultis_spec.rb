require 'spec_helper'
require_relative '../../lib/utils'

describe 'Utils' do
  let(:utils) { Utils.new }
  let(:item1) { Item.new('bike', 'k', 50)}
  let(:item2) { Item.new('car', 'k', 200)}
  let(:item3) { Item.new('ship', 'k', 1000)}

  describe 'find max item' do
    it 'should return item with max weight' do
      max_item = utils.find_max_item([item1, item2, item3])
      expect(max_item.name).to eq('ship')
      expect(max_item.unit).to eq('k')
      expect(max_item.weight).to eq(1000)
    end
  end

  describe 'find min item' do
    it 'should return item with min weight' do
      min_item = utils.find_min_item([item1, item2, item3])
      expect(min_item.name).to eq('bike')
      expect(min_item.unit).to eq('k')
      expect(min_item.weight).to eq(50)
    end
  end
end
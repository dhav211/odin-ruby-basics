require 'spec_helper'
require_relative '../stock_picker'

RSpec.describe 'stock picking' do
  describe 'find best days to buy and sell stocks' do
    it 'best days' do
      expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    end
  end
end

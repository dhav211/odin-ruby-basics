require 'spec_helper'
require_relative '../bubble_sort'

RSpec.describe 'bubble sorting' do
  describe 'sort a numbered array with bubbling' do
    it '1-8' do
      expect(bubble_sort([8, 1, 7, 2, 6, 3, 5, 4])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
    end

    it 'crazier array' do
        expect(bubble_sort([82, 11, 43, 65, 23, 12, 11, 12])).to eq([11, 11, 12, 12, 23, 43, 65, 82])
      end
  end
end

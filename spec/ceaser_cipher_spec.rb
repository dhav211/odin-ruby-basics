require 'spec_helper'
require_relative '../ceaser_cipher'

RSpec.describe 'ciphering' do
  describe 'ceaser cipher' do
    it 'shift left 3' do
      expect(ceaser_cipher('wow', -3)).to eq('tlt')
      end
  end

  describe 'ceaser cipher' do
    it 'shift right 3' do
    expect(ceaser_cipher('cool', 3)).to eq('frro')
    end
  end

  describe 'ceaser cipher' do
    it 'shift left 3 with capitalization' do
    expect(ceaser_cipher('woW', -3)).to eq('tlT')
    end
  end

  describe 'ceaser cipher' do
    it 'shift right 1 with space' do
    expect(ceaser_cipher('hello world', 1)).to eq('ifmmp xpsme')
    end
  end

  describe 'ceaser cipher' do
    it 'shift right 3 with punctuation' do
    expect(ceaser_cipher('.cool!', 3)).to eq('.frro!')
    end
  end
end

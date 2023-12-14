require 'spec_helper'
require_relative '../substring'

RSpec.describe 'substringing' do
  describe 'find substrings' do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

    it 'find substring of single word' do
      expect(substring("below", dictionary)).to eq({"below"=>1, "low"=>1})
    end

    it 'find substring of sentence word' do
      expect(substring("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
    end
  end
end
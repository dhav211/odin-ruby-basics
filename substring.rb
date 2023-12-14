# frozen_string_literal: true

def substring(word, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, entry|
    word.split(' ').each { |subword| result[entry] += 1 if subword.downcase.include? entry }
    result
  end
end
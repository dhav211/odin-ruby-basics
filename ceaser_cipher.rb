# frozen_string_literal: true

def ceaser_cipher(text, shift)
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

  text.split('').map do |letter|
    if alphabet.include? letter.downcase
      letter_index = alphabet.find_index(letter.downcase) + shift
      letter == letter.downcase ? alphabet[letter_index] : alphabet[letter_index].upcase
    else
      letter
    end
  end.join('')
end

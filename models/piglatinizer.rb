require 'pry'

class PigLatinizer

  def piglatinize(user_phrase)
    vowels = ['a','e','i','o','u']
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    first_letter = user_phrase[0]
    second_letter = user_phrase[1]

    if user_phrase.include?(vowels)
      user_phrase << 'ay'
      user_phrase
    elsif first_letter.include?(consonants) && second_letter.include?(vowels)
      add_consonant_to_end_of_word = user_phrase << first_letter
      add_consonant_to_end_of_word << 'ay'
      add_consonant_to_end_of_word
    else first_letter.include?(consonants) && second_letter.include?(consonants)
      add_both_consonants_to_end_of_word = user_phrase << first_letter + second_letter
      add_both_consonants_to_end_of_word << 'ay'
      add_both_consonants_to_end_of_word
    end
  end

  binding.pry

end

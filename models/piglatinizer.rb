require 'pry'

class PigLatinizer

  def piglatinize(word)
    vowels = ['a','e','i','o','u']
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    first_letter = word[0]
    second_letter = word[1]

    if vowels.include?(first_letter.downcase)
      word << 'way'
      word
    elsif consonants.include?(first_letter.downcase) && vowels.include?(second_letter.downcase)
      add_consonant_to_end_of_word = word << first_letter
      add_consonant_to_end_of_word << 'ay'
      add_consonant_to_end_of_word.slice(1, add_consonant_to_end_of_word.length)
    else
      first_vowel = word.index(/[aeiou]/)
      add_both_consonants_to_end_of_word = word << word.slice(0, first_vowel)
      add_both_consonants_to_end_of_word << 'ay'
      add_both_consonants_to_end_of_word.slice(first_vowel, add_both_consonants_to_end_of_word.length)
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| word.piglatinize(word) }.join(" ")
  end

end

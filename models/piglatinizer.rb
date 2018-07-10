require 'pry'

class PigLatinizer

  def piglatinize(user_phrase)
    if user_phrase.size > 1
    	user_phrase.split(" ").collect { |word| vowels(word) || consonants(word) }.join(" ")
    else
      vowels(word) || consonants(word)
    end
  end

  def vowels(word)
    vowels = ['a','e','i','o','u']
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    first_letter = word[0]
    second_letter = word[1]

    if vowels.include?(first_letter.downcase)
      word << 'way'
      word
    else
      consonants(word)
    end
  end


  def consonants(word)
    vowels = ['a','e','i','o','u']
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
    first_letter = word[0]
    second_letter = word[1]

    if consonants.include?(first_letter.downcase) && vowels.include?(second_letter.downcase)
      add_consonant_to_end_of_word = word << first_letter
      add_consonant_to_end_of_word << 'ay'
      add_consonant_to_end_of_word.slice(1, add_consonant_to_end_of_word.length)
    elsif consonants.include?(first_letter.downcase) && consonants.include?(second_letter.downcase)
      first_vowel = word.index(/[aeiou]/)
      add_both_consonants_to_end_of_word = word << word.slice(0, first_vowel)
      add_both_consonants_to_end_of_word << 'ay'
      add_both_consonants_to_end_of_word.slice(first_vowel, add_both_consonants_to_end_of_word.length)
    else
      vowels(word)
    end
  end

end

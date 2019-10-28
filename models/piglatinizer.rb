class PigLatinizer
    
    attr_accessor :text

    def initialize
        @text = text
    end

    def piglatinize(text)
      array_of_words = text.split
      vowels = ["a","e","i","o","u"] 
      sentence = []

      array_of_words.each do |word|
        if vowels.include?(word.downcase.slice(0))
            pig_latin_word = word + "way"
            sentence << pig_latin_word
        else
            split_word = word.split(/[aeoui]/)
            first_bit = split_word[0]
            count = first_bit.size
            ending = first_bit + "ay"
            cut_word = word.slice(count...word.length)
            pig_latin_word = cut_word + ending
            sentence << pig_latin_word  
        end
        end
        sentence.join (" ")
    end

end

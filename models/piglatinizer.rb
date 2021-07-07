class PigLatinizer

    def piglatinize(string)
        split_words = string.split(" ")
        words = split_words.map {|word| piglatinize_word(word)}
        words.join(" ")
    end

    def piglatinize_word(word)
        first_letter = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_letter)
                "#{word}way"
        else
            consonants = []
            consonants << word[0]
                if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                    consonants << word[1]
                    if ["a", "e", "i", "o", "u"].include?(word[2]) ==false
                        consonants << word[2]
                        if ["a", "e", "i", "o", "u"].include?(word[3]) == false
                            consonants <<word[3]
                        end
                    end
                end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"    
        end
    end
end
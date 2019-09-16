class PigLatinizer
    def piglatinize(sentence)
        new_sentence = sentence.split(" ").map do |word|
            piglatinize_word(word)
        end
        new_sentence.join(" ")
    end

    def piglatinize_word(word)

        if word[0] =~ /[aeiouAEIOU]/
            word += "way"
        else
            letters = word.split("")
            while !(letters[0] =~ /[aeiouAEIOU]/) do
                i = letters.shift
                letters.push(i)
            end
            string = letters.join
            string += "ay"
        end
    end
end
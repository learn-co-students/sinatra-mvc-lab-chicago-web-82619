class PigLatinizer
    
    def piglatinize(string)

        vowels = ['a','e','i','o','u', 'A', 'E', "I", "O", "U"]
       # find first vowel after string[0]

        word_arr = string.split(" ")

        result = word_arr.map do |word|
            
            s_arr = word.split('')

            if vowels.include?(s_arr.first)
                s_arr.push("way")
                
            else
            count = 0
            # binding.pry

            s_arr.each do |letter| 
                if !vowels.include?(letter)
                    count += 1
                else
                    break
                end
            end
            
            count.times do 
                char = s_arr.shift
                s_arr.push(char)
            end
    
            s_arr.push("ay")
            
            end
            
            s_arr.join

        end

        result.join(" ")
    end


end



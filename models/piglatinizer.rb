class PigLatinizer
  def piglatinize(string)
    string.split(' ').map {|word| piglatinize_word(word)}.join(' ')
  end

  def piglatinize_word(word)
    if word[0] =~ /[aeiouAEIOU]/
      word += 'way'
    else
      letters = word.split('') 
      while !(letters[0] =~ /[aeiouAEIOU]/) do
        letters << letters.shift
      end
      word = letters.join + 'ay'
    end
  end
end
class PigLatinizer
    attr_reader :string

    def piglatinize(string)
        array = []
        word_array = string.split(' ')
        word_array.each do |word|
            array << identify_vowels(word)    
        end
        array.join(' ')
    end
    
    def identify_vowels(word)  
        array = []
        split_word = word.split('')
        if ["a","e","i","o","u"].include?(split_word[0].downcase)
            return (split_word.join + "way")
        else
            # binding.pry
            split_word.each do |letter|
                if !["a","e","i","o","u"].include?(split_word[0].downcase)
                    split_word << split_word.shift
                else
                    return split_word.join + "ay"
                end
            end
        end
    end



end
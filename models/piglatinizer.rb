require 'pry'
class PigLatinizer

    # attr_reader :text
   
    # def initialize(text)
    #   @text = text.downcase
    # end

    def piglatinize(text)
        #binding.pry
    #Credit to Tom for the method
    arr = text.scan(/[\w'-]+|[[:punct:]]+/)
    #punct = arr.pop
    arr = arr.map do |word|
        w_array = word.split("")
        #binding.pry
        if w_array[0].scan(/[aeouiAEIOU]/).length > 0
            w_array << "way"
        elsif w_array[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).length > 0
            while w_array[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).length > 0
            letter = w_array.shift
            w_array = w_array.push(letter)
            end
            w_array << "ay"
        else 
        end
        w_array.join("")
    end
    arr.join(" ")
    end

end
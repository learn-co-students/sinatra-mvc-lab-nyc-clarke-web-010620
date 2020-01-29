class PigLatinizer

  def initialize
  end

  def piglatinize(text)
    words = text.split(" ")
    output = []

    words.each do |word|
      str_arr= word.split(//)
      if str_arr[0].scan(/[aeouiAEOUI]/).count > 0
        str_arr << "way"
        output << str_arr.join("")
      else
        while str_arr[0].scan(/[BbCcDdFfGgHhJjKkLlMmNnNpPqQrRsStTvVwWxXyYzZ]/).count > 0
          letter = str_arr[0]
          str_arr.shift
          str_arr << letter 
        end
        str_arr << "ay"
        output << str_arr.join("")
      end
    end
    output.join(" ")
  end
end




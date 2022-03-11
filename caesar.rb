
def caesar_convert(string, shift_factor)
  new_string = string
  .split("")
  .map do |char|
    if char == " " || char == "." || char == "," || char == "!" || char == "'" || char == "\""
      next char
    end

    if char == char.upcase
      char_shifted = char.ord + shift_factor

      if char_shifted > 90
        char_shifted = 64 + (char_shifted - 90)
      end

      if char_shifted < 65
        char_shifted = 91 - (65 - char_shifted)
      end
      
    end

    if char == char.downcase
      char_shifted = char.ord + shift_factor

      if char_shifted > 122
        char_shifted =  96 + (char_shifted - 122)
      end

      if char_shifted < 97
        char_shifted =  123 - (97 - char_shifted)
      end

    end

    char_shifted.chr
  end
  .join
end




  
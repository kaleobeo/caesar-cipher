
def caesar_convert(string, shift_factor)
  new_string = string
  .split("")
  .map do |char|
    if char == " " || char == "." || char == "," || char == "!" || char == "'" || char == "\""
      next char
    end

    if char.ord.between?(65, 90)
      char_shifted = (65 + (((char.ord + shift_factor) - 65) % 26))
    end
    
    if char.ord.between?(97, 122)
      char_shifted = (97 + (((char.ord + shift_factor) - 97) % 26))
    end

    char_shifted.chr
  end
  .join
end




  
def caesar_cipher(string, shift, result="")
  # iterates over each char in the string and converts into it's ascii value
  string.each_byte do |char|
    base_char = char<91 ? 65 : 97

    # verifies if the char is an uppercase or lowercase letter and then shifts it
    if char.between?(65, 90) || char.between?(97, 122)
      shifted_char = (char - base_char + shift) % 26 + base_char
      result += shifted_char.chr
    else
      result += char.chr
    end
  end
  result
end


def caesar_cipher(string, shift)
  # iterates over each char in the string and allows you to perform an operation on it
  string.chars.map do |char|
    if char.match(/[a-z]/)
      ((char.ord - 97 + shift) % 26 + 97).chr
    elsif char.match(/[A-Z]/)
      ((char.ord - 65 + shift) % 26 + 65).chr
    else
      char
    end
  end.join
end


puts caesar_cipher("What a string!", 5)  # Output: "Bmfy f xywnsl!"
puts caesar_cipher("Testing", 1)  # Output: "Uftujoh"
puts caesar_cipher("Hello, World!", 13) # Output: "Uryyb, Jbeyq!"

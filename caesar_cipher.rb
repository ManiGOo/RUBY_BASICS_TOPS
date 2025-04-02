def caesar_cipher(text, shift)
  alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
  text.chars.map do |char|
    if alphabet.include?(char)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      ((char.ord - base + shift) % 26 + base).chr
    else
      char
    end
  end.join
end

puts "Enter text:"
text = gets.chomp
puts "Enter shift value:"
shift = gets.chomp.to_i

encrypted_text = caesar_cipher(text, shift)
puts "Encrypted Text: #{encrypted_text}"

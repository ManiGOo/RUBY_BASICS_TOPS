def substrings(input, dictionary)
  input = input.downcase
  result = Hash.new(0)

  dictionary.each do |word|
    matches = input.scan(/(?=#{word.downcase})/)
    result[word] += matches.count if matches.count > 0
  end

  result
end

# Dictionary
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

# Test input
result = substrings("below", dictionary)
puts result.inspect

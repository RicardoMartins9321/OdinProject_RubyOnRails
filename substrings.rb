def substrings(string, dictionary)
  result = Hash.new(0)

  dictionary.each do |word|
    matches = string.downcase.scan(word).length
    result[word] = matches unless matches == 0
  end

  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
# Output: { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Output: { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,
# "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(string, dictionary)
  string = string.downcase
  words = string.split(' ')
  results = {}

  dictionary.each do |substring|
    count = words.count { |word| word.include?(substring) }
    results[substring] = count if count > 0
  end

  results
end

puts substrings("below", dictionary)
# Output: { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Output: { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,
# "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

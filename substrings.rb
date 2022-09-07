def substrings (word, substrings )
  results = Hash.new(0)

  for str in substrings do
    if word.include?(str)
      results[str] += count_em(word, str) # counting function
    end
  end

  # Return the hash
  return results
end

def count_em(str, substr)
  subarr = substr.chars
  str.each_char
     .each_cons(substr.size)
     .count(subarr)
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
end

def combine_anagrams(words)
 # YOUR CODE HERE

  anagram_hash = Hash.new
  words.each { |word| 
    
    # derive word anagram key    
    key = word.upcase.gsub(/\w/).to_a.sort.join

    anagram_hash[key] = Array.new if anagram_hash[key] == nil

    # group words to angram keys
    anagram_hash[key].push word  
  }

  anagrams = Array.new
  anagram_hash.each_value { |val| anagrams.push(val) }
  
  return anagrams
end

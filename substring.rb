dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  word = word.downcase
  result = Hash.new(0)

  dictionary.each do |substring|
    substring = substring.downcase
    count = word.scan(substring).length
    result[substring] += count if count > 0
  end

  result
end

# Exemplo de uso:
word = "Howdy partner, sit down! How's it going?"


result = substrings(word, dictionary)
puts result
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substring(string, array)
  result = Hash.new(0)
  array.each { |sub| result[sub] = string.downcase.scan(/#{sub}/).length }
  result.select { |_, value| value.positive? }
end

substring("Howdy partner, sit down! How's it going?", dictionary)

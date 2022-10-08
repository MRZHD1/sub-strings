dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substring(string, array)
  result = Hash.new(0)
  array.each { |sub| result[sub] = string.downcase.scan(/#{sub}/).length }
  result.select { |_, value| value.positive? }
end

substring("Howdy partner, sit down! How's it going?", dictionary) 
# returns => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, array)
    result = Hash.new(0)
    for sub in array
        result[sub] = string.downcase.scan(/#{sub}/).length
    end
    return result.select{|key, value| value > 0 }
end

substring("Howdy partner, sit down! How's it going?", dictionary)
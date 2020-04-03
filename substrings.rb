def substrings word, word_set
    substrings = Hash.new(0)
    words = word.downcase.split(" ")
    for i in (0...words.length)
        for j in (0...word_set.length)
            if words[i].include?(word_set[j])
                substrings[word_set[j]] += 1
            end
        end
    end
    substrings.to_s
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
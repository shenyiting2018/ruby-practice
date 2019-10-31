class String
    def count_word(str)
        # words = self.split(/\W+/)
        words = self.scan(/\w+/)
        hash = Hash.new
        words.each do |word|
            if hash.has_key?(word)
                hash[word] += 1
            else
                hash[word] = 1
            end
        end
        if hash.has_key?(str)
            return hash[str]
        else
            return hash
        end
    end
end



class Compress
    def words
        @words
    end

    def indexes
        @indexes
    end

    def initialize(str)
        @words = Array.new
        @indexes = Array.new
        hash = Hash.new
        strings = str.split(" ")

        strings.each_with_index do |word, index|
            if !hash.has_key?(word)
                hash[word] = index
                @words << word
                @indexes << index
            else
                @indexes << hash[word]
            end
        end
    end
end




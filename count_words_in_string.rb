class String
	def count_words(pattern=nil)
		words = self.split(/\W+/)
		hash = Hash.new(0)
		for word in words
			hash[word] = hash[word] + 1
		end

		if !pattern.nil?
			return hash[pattern]
		else
			return hash
		end
	end
end

def count_words2(
	string=%{
		Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
	},
	pattern=nil
)
	words = string.split(/\W+/)
	hash = Hash.new(0)
	for word in words
		hash[word] = hash[word] + 1
	end

	if !pattern.nil?
		return hash[pattern]
	else
		return hash
	end
end

string = %{
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
}

puts("using string to call with pattern " + string.count_words('and').to_s)
puts("using string to call without pattern " + "hello hello world ".count_words().to_s)
puts(count_words2())
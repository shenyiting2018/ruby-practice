class String
	def count_word(pattern=nil)
		if (not pattern.nil?) and (pattern.class != String)
			puts "Invalid argument, pattern must be a string"
			return 
		end

		# Using regex to split a string to an array of words
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

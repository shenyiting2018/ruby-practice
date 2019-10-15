class Compress
	# Getter for string array
	def string_array
		@string_array
	end

	# Getter for index array
	def index_array
		@index_array
	end

	def initialize(string)
		@string_array = Array.new
		@index_array = Array.new
		hash = Hash.new
		count = 0
		string = string.split()

		string.each do |word|
			if hash.has_key?(word)
				@index_array.push(hash[word])
			else				
				@string_array.push(word)
				@index_array.push(count)
				hash[word] = count
				count = count + 1
			end
		end
		# breakdown string to two arrays
	end
end

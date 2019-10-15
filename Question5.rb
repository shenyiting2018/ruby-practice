class Hash
	def merge(h2)
		h3 = self
		h2.each_key do |key|
			h3[key] = h2[key]
		end
		return h3
	end
end

h1 = {"a" => 100, "b" => 200}
h2 = {"b" => 254, "c" => 300}
puts h1.merge(h2)
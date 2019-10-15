class Person 
	attr_accessor :age

	def initialize(age)
		@age = age
	end

	def age_different_with(another)
		diff = @age - another.age
		return diff
	end
end

class Person 
	attr_accessor :age

	def age_different_with(another)
		dif = self.age - another.age
		return dif
	end
end

person = Person.new
person.age = 36
person2 = Person.new
person2.age = 37
p person.age_different_with(person2)
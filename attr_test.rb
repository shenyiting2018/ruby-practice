class Student
    attr_accessor :public_attr
    def initialize()
        @age = 3
        @name = 'Bill'
        @public_attr = 51
    end
end

student = Student.new
# puts student.public_attr
puts student.age
student.name = 'Jack'
puts student.name

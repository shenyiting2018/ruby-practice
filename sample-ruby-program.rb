class MyClass
    def initialize(var)
        @var = var
    end

    def my_method
        puts "instance var is #{@var}"
    end

end

obj = MyClass.new(3)
obj.my_method

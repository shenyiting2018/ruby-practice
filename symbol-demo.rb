class Test
    def mymethod
        puts 'testing method'
    end
end

obj = Test.new()
m = :mymethod
obj.method(m).call

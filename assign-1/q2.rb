class Search
    def search_students(students, **query)
        res = Array.new
        students.each do |student|
            query.each do |key, value|
                if student[key] == value
                    res << student
                end
            end
        end

        if students.empty?
            puts "no match is found"
        else
            puts "First Name     Late Name    Phone#"
            res.each do |student|
                student.each do |key, value|
                    print value.to_s << " "
                end
                puts
            end
        end

    end
end

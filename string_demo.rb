# create string

string_created_with_literal  = "i love you"
string_created_with_class = String.new(string_created_with_literal)
string_created_with_here_documents = <<-EOS

    First Line
        Second Line
            Third Line
EOS
string_created_with_percent_sign = %{
    First Line
        Second Line
            Third Line
}

puts "string_created_with_literal = #{string_created_with_literal}"
puts "string_created_with_class = #{string_created_with_class}"
puts "string_created_with_here_documents = #{string_created_with_here_documents}"
puts "string_created_with_percent_sign= #{string_created_with_percent_sign}"


# String operations
string_concat_with_plus = "i love you " + "forever"
string_concat_without_plus = "i love you " " forever"
string_times_n = "over " * 3 + " again"
string_concat_with_smaller = "i love you" << "r money"

puts "string_concat_with_plus = #{string_concat_with_plus}"
puts "string_concat_without_plus = #{string_concat_without_plus}"
puts "string_times_n = #{string_times_n}"
puts "string_concat_with_smaller =  #{string_concat_with_smaller}"

# string comparison
a = 'abcded' <=> 'abced' 

puts "'abcded' <=> 'abced' = #{a}"

# slicing
a = "i love you"
puts a[0]
puts a[2,5]
puts a[2..5]
puts a[2...5]

#for each
a.each_char {|x| print x,'-'}

# expression interpretation
def capitalize(string)
    return string.capitalize()
end

action = 'insert' 

the_string = %{
    Expression interpretation allow string to be #{action} to a string template.
    For example,
    I can capitalize 'word' to #{capitalize(:word)}.
}

puts the_string


counter = 0

res = []
File.open('test.txt', 'r+').each_line do |line|
    puts "#{counter} line: #{line}"
    res << line
    counter += 1
end

File.open('output.txt', 'w+') do |f|
    f.write(res)
end



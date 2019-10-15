class ConversationPrinter
    attr_accessor :query_param, :file_name

    def initialize(query_param, file_name)
        @query_param = query_param
        @file_name = file_name
    end

    def read_file
        file = File.open(@file_name)
        data = file.read
        file.close
        return data
    end

    def print
        puts "Start scanning content for #{@query_param}"

        # We only allow two types of query params
        if @query_param != 'ADVISOR' and  @query_param != 'STUDENT'
            puts 'Illegal query param, must be either ADVISOR or STUDENT'
            return
        end

        # Read file and split by line breaker
        data = read_file
        data = data.split("\n")
        # According to question, new line starts with 5 spaces
        whitespace = " " * 5

        puts "File #{@file_name} imported, start scanning..."

        iter = 0
        while iter < data.length
            if data[iter].start_with?(@query_param)
                output = String.new(data[iter])
                iter += 1 
                # Scanning following lines
                while iter < data.length and data[iter].start_with?(whitespace)
                    output << "\n"
                    output << data[iter]
                    iter += 1 
                end
                puts output
            else
                iter += 1
            end
        end
        
        puts "Scanning completed"
    end
end

# test = ConversationPrinter.new('ADVISOR', './conversation.txt')
# test.print
# test2 = ConversationPrinter.new('STUDENT', './conversation.txt')
# test2.print
# test3 = ConversationPrinter.new('FAIL', './conversation.txt')
# test3.print


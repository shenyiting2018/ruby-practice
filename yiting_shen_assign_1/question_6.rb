class HTMLFilter

    def initialize(template)
        @template = template
    end

    def filter
        if @template.nil? or @template.length == 0
            puts "Empty string, return"
            return
        end

        filtered_result = ""

        # Split to lines by line breakers
        strings = @template.split("\n")

        # Add a iterator iterating through the entire lines
        line_iter = 0
        while line_iter < strings.length
            line = strings[line_iter]
            # Using the line trimmed with whitespace for conditional check
            trimed_line = line.strip  # = Java (.trim())

            # If starts with %, whole line should be removed
            if trimed_line.start_with?("%")
                line_iter += 1 # Jump to next line
                next # = continue (Python, Java)
            end

            # If the line contains <%, filter out the content between <% and %>.
            if not trimed_line.index("<%").nil?
                unfiltered_part = ""
                index_of_left_tag = line.index("<%")
                if index_of_left_tag != 0
                    # add the part at the left of the left tag <%
                    unfiltered_part << line[0...index_of_left_tag]
                end

                index_of_right_tag = line.index("%>")
                if index_of_right_tag.nil?
                    puts "crossing line ruby tags not allowed, return"
                    return
                end

                unfiltered_part << line[index_of_right_tag + 2..-1]
                # If entire line is whitespace, skip
                if unfiltered_part.strip.length != 0
                    puts "unfilter part:#{unfiltered_part}"
                    filtered_result << unfiltered_part 
                    filtered_result << "\n"
                end
            else
                filtered_result << line
                filtered_result << "\n"
            end
            line_iter += 1
        end
        return filtered_result
    end
end

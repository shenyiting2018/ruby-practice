class Conversation

    def filter(file_name, person)
        file = File.open(file_name)
        data = file.read
        data = data.split("\n")
        data.each do |line|
            if /\bADVISOR\b/ =~ line
                is_advisor = true
            elsif /\bSTUDENT\b/ =~ line
                is_advisor = false
            end
            if person == "ADVISOR"
                if is_advisor
                    puts line
                end
            else
                if !is_advisor
                    puts line
                end
            end
        end
        file.close
    end
end


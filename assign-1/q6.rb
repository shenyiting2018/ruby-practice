class MyClass
    attr_accessor :template

    def initialize(template)
        @template = template
    end

    def filter
        lines = @template.split("\n")
        lines.each do |line|
        puts "working on #{line}"
            if /%>\z/ =~ line
                puts "deleting line #{line}"
                lines.delete(line)
            end
        end

        res = ""
        lines.each do |l|
            res << l + "\n"
        end
        return res
    end
end





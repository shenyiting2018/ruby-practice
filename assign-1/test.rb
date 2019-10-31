class Box
    attr_accessor :length, :height, :width
    def initialize(length, height, width)
        @length = length
        @width = width
        @height = height
    end

    def show_length
        @length
    end
    def show_height
        @height
    end
    def show_width
        @width
    end
    def volume
        volume = @length * @height * @width
        return volume
    end
    def scale
        scale = 4 * (@length + @height + @width)
        return scale
    end
end



obj = Box.new(3,4,5)
p obj.show_width
p obj.volume
p obj.scale


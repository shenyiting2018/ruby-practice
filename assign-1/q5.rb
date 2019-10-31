class Hash
    def merge(another)
        h3 = self.clone
        another.each do |key, value|
            if block_given?
                if h3.has_key?(key)
                    h3[key] = yield(key, self[key], value)
                else
                    h3[key] = value
                end
            else
                h3[key] = value
            end
        end
        h3
    end
end

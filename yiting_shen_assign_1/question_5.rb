class Hash
    def merge_helper(other_hash, change_me, &operator)
        # Just ensure we're using our own method
        puts "Running merge hash from my own method"

        new_hash = self
        if not change_me
            new_hash = self.clone
        end

        # If block not given, just simply merge them
        if not block_given?
            other_hash.each do |key, val|
                # If exist this key, override
                new_hash[key] = val
            end
        else
            other_hash.each do |key, val|
                if not self.key?(key)
                    new_hash[key] = val
                else
                    new_hash[key] = operator.call(key, self[key], val)
                end
            end
        end
        return new_hash
    end

    def merge(other_hash, &operator)
        return merge_helper(other_hash, false, &operator)
    end

    def merge!(other_hash, &operator)
        return merge_helper(other_hash, true, &operator)
    end
end

class Codewalk

    DELIMITER = /\nEXAMPLE [0-9]*\n/

    def parse(output_raw)
        raw_chunks = output_raw.split(DELIMITER)
        raw_chunks.shift() # remove empty first element
        @chunks = raw_chunks.collect do |chunk|
            # remove starting and trailing newline from each chunk
            chunk[-1] = ""
            chunk[0] = ""
            chunk
        end
    end

    def [](index)
        @chunks[index]
    end

    def output()
        @chunks[-1]
    end

end

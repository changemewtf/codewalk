class Codewalk

    BORDER = "[= ]*"
    DELIMITER = /\n#{BORDER}EXAMPLE [0-9\.]*#{BORDER}\n/

    def parse(output_raw)
        raw_chunks = output_raw.split(DELIMITER)
        raw_chunks.shift() # remove empty first element
        @chunks = raw_chunks.collect do |chunk|
            # remove starting and trailing newline from each chunk
            chunk[-1] = ""
            chunk[0] = ""
            chunk
        end

        self
    end

    def [](index)
        @chunks[index]
    end

    def output()
        @chunks[-1]
    end

    def run(command)
        output_raw = `#{command}`
        parse(output_raw)

        self
    end

end

require 'codewalk'

output_raw = <<-EOF

EXAMPLE 1

["a", "b", "c"]

EXAMPLE 2

Popped 'c'
["a", "b"]
EOF

describe Codewalk do

    it "should split many examples into a list" do
        c = Codewalk.new

        c.parse(output_raw)

        expect(c[0]).to eq(['a','b','c'].inspect)
        expect(c[1]).to eq("Popped 'c'\n#{['a','b'].inspect}")
    end

    it "should output only the last example" do
        c = Codewalk.new

        c.parse(output_raw)

        expect(c.output).to eq("Popped 'c'\n#{['a','b'].inspect}")
    end

    it "should run a script and parse its output" do
        c = Codewalk.new

        c.run("ruby spec/output_examples.rb")

        expect(c.output).to eq("Popped 'c'\n#{['a','b'].inspect}")
    end

end

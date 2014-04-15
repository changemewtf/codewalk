require 'codewalk'

output_raw = <<-EOF

EXAMPLE 1

["a", "b", "c"]

EXAMPLE 2

Popped 'c'
["a", "b"]
EOF

output_raw_prettier = <<-EOF

 ===== === EXAMPLE 1 = = ====

["a", "b", "c"]

========== EXAMPLE 2 ==========

Popped 'c'
["a", "b"]
EOF

describe Codewalk do

    before :each do
        @c = Codewalk.new
    end

    it "should split many examples into a list" do
        @c.parse(output_raw)

        expect(@c[0]).to eq(['a','b','c'].inspect)
        expect(@c[1]).to eq("Popped 'c'\n#{['a','b'].inspect}")
    end

    it "should output only the last example" do
        @c.parse(output_raw)

        expect(@c.output).to eq("Popped 'c'\n#{['a','b'].inspect}")
    end

    it "should run a script and parse its output" do
        @c.run("ruby spec/output_examples.rb")

        expect(@c.output).to eq("Popped 'c'\n#{['a','b'].inspect}")
    end

    it "should allow any amount of equal signs or spaces around EXAMPLE" do
        @c.parse(output_raw_prettier)

        expect(@c.output).to eq("Popped 'c'\n#{['a','b'].inspect}")
    end

end

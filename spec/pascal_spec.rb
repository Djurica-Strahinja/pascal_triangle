require "pascal"

describe Pascal do
  describe ".nth_row" do
    context "run without argument" do
      it "returns first row of pascal triangle" do
        sample = Pascal.new
        expect(sample.nth_row).to eql("1")
      end
    end

    context "run argument: 1" do
      it "returns first row of pascal triangle" do
        sample = Pascal.new(1)
        expect(sample.nth_row).to eql("1")
      end
    end

    context "run argument: 5" do
      it "returns first row of pascal triangle" do
        sample = Pascal.new(5)
        expect(sample.nth_row).to eql("1 4 6 4 1")
      end
    end

    context "run argument: 20" do
      it "returns first row of pascal triangle" do
        sample = Pascal.new(10)
        expect(sample.nth_row).to eql("1 9 36 84 126 126 84 36 9 1")
      end
    end
  end

  describe ".draw_pascal_triangle" do
    context 'run with argument:1' do
      it 'prints first row' do
        sample = Pascal.new(1)
        expect { sample.draw_pascal_triangle }.to output("1\n").to_stdout
      end
    end

    context 'run with argument:3' do
      it 'prints first three rows' do
        sample = Pascal.new(3)
        expect { sample.draw_pascal_triangle }.to output("1\n1 1\n1 2 1\n").to_stdout
      end
    end

    context 'run with argument:5' do
      it 'prints first five rows' do
        sample = Pascal.new(5)
        expect { sample.draw_pascal_triangle }.to output("1\n1 1\n1 2 1\n1 3 3 1\n1 4 6 4 1\n").to_stdout
      end
    end
  end
end

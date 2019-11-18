require "pascal"

describe Pascal do
  describe ".nth_row" do
    context "without argument" do
      it "returns first row of pascal triangle" do
        sample = Pascal.new
        expect(sample.nth_row).to eql("1")
      end
    end

    context "with argument: 1" do
      it "returns first row of pascal triangle" do
        sample = Pascal.new
        expect(sample.nth_row(1)).to eql("1")
      end
    end

    context "with argument: 5" do
      it "returns fifth row of pascal triangle" do
        sample = Pascal.new
        expect(sample.nth_row(5)).to eql("1 4 6 4 1")
      end
    end

    context "with argument: 20" do
      it "returns twentieth row of pascal triangle" do
        sample = Pascal.new
        expect(sample.nth_row(10)).to eql("1 9 36 84 126 126 84 36 9 1")
      end
    end
  end

  describe ".draw_pascal_triangle" do
    context 'with argument: 1' do
      it 'prints first row' do
        sample = Pascal.new
        expect { sample.draw_pascal_triangle(1)}.to output(" 1\n").to_stdout
      end
    end

    context 'with argument: 3' do
      it 'prints first three rows' do
        sample = Pascal.new
        expect { sample.draw_pascal_triangle(3)}.to output("   1\n  1 1\n 1 2 1\n").to_stdout
      end
    end

    context 'with argument: 5' do
      it 'prints first five rows' do
        sample = Pascal.new
        expect { sample.draw_pascal_triangle(5)}.to output("     1\n    1 1\n   1 2 1\n  1 3 3 1\n 1 4 6 4 1\n").to_stdout
      end
    end
  end
end

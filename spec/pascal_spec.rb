require "pascal"

describe PascalTriangle do
  describe ".draw" do
    context 'with argument: 0' do
      it 'prints first row' do
        sample = PascalTriangle.new
        expect { sample.draw(1)}.to output("1\n").to_stdout
      end
    end

    context 'with argument: 1' do
      it 'prints first row' do
        sample = PascalTriangle.new
        expect { sample.draw(1)}.to output("1\n").to_stdout
      end
    end

    context 'with argument: 3' do
      it 'prints first three rows' do
        sample = PascalTriangle.new
        expect { sample.draw(3)}.to output("  1  \n 1 1 \n1 2 1\n").to_stdout
      end
    end

    context 'with argument: 5' do
      it 'prints first five rows' do
        sample = PascalTriangle.new
        expect { sample.draw(5)}.to output("    1    \n   1 1   \n  1 2 1  \n 1 3 3 1 \n1 4 6 4 1\n").to_stdout
      end
    end
  end
end

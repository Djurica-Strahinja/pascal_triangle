class PascalTriangle
  attr_reader :first_row, :second_row

  def initialize
    @first_row = [1]
    @second_row = [1, 1]
  end

  def draw(height)
    max_width = nth_row(height).join(" ").length
    for row in (1..height)
      print_row(row, max_width)
    end
  end

  private
  def print_row(row, max_width)
    puts (nth_row(row).join(" ")).center(max_width)
  end

  def nth_row(row_num)
    return first_row  if row_num == 1
    return second_row if row_num == 2

    row = second_row
    (row_num - 2).times { row = next_row(row) }
    row
  end

  def next_row(row)
    new_row = [1, 1]
    (row.length - 1).times {|i| new_row.insert(1,(row[i] + row[i + 1])) }
    new_row
  end
end

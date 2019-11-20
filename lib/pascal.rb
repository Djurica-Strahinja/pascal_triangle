class PascalTriangle
  attr_reader :first_row, :second_row, :space
  def initialize
    @first_row = [1]
    @second_row = [1,1]
    @space = " "
  end
  def draw(height)
    num_spaces = height
    for row in (1..height)
      print_row(num_spaces, row)
      num_spaces -= 1
    end
  end

  private
  def print_row(num_spaces, row)
    puts "#{@space*num_spaces}#{nth_row(row).join(" ")}"
  end

  def nth_row(row_num)
    return @first_row  if row_num == 1
    return @second_row if row_num == 2
    row = @second_row
    (row_num - 2).times { row = next_row(row) }
    row
  end

  def next_row(row)
    new_row = [1,1]
    (row.length - 1).times do |i|
      new_row.insert(1,(row[i] + row[i+1]))
    end
    new_row
  end
end

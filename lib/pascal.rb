class Pascal_triangle
  def draw(height=1)
    spaces = " "
    num_spaces = height
    for row in (1..height)
      puts "#{spaces*num_spaces}#{nth_row(row)}"
      num_spaces -= 1
    end
  end

  private
  def next_row(row)
    new_values = []
    (row.length - 1).times do |i|
      new_values << (row[i] + row[i+1])
    end
    new_row = [1,1]
    new_values.each do |num|
      new_row.insert(1,num)
    end
    new_row
  end

  def nth_row(row_num = 1)
    row = [1, 1]
    return "1" if row_num == 1
    return row.join(" ") if row_num == 2
    (row_num-2).times do
      row = next_row(row)
    end
    row.join(" ")
  end
end

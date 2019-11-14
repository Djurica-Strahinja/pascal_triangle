
class Pascal


  def nth_row(row_num=1)
    row = [1,1]
    new_row= []

    if row_num == 1
      return "1"
    elsif row_num == 2
      return row.join(" ")
    else
      (row_num-2).times do
        new_row = []
        (row.length-1).times do |i|
            new_row << (row[i]+row[i+1])
        end
        row = [1,1]
        new_row.each do |num|
          row.insert(1,num)
        end
      end
      return row.join(" ")
    end
  end

  def draw_pascal_triangle(height=1)
    for row in(1..height)
      puts nth_row(row)
    end
  end
end

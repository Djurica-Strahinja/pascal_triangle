
class Pascal
  def initialize(row_num = 1)
    @row_num = row_num
  end
  def nth_row
    row = [1,1]
    new_row= []

    if @row_num == 1
      return "1"
    elsif @row_num == 2
      return row.join(" ")
    else
      (@row_num-2).times do
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

  def draw_pascal_triangle
    row = [1,1]
    new_row= []

    if @row_num == 1
      puts 1
    elsif @row_num == 2
      puts 1
      puts row.join(" ")
    else
      puts "1"
      puts row.join(" ")

      (@row_num-2).times do
        new_row = []
        (row.length-1).times do |i|
            new_row << (row[i]+row[i+1])
        end
        row = [1,1]
        new_row.each do |num|
          row.insert(1,num)
        end
        puts row.join(" ")
      end
    end
  end
end

class Grouping
  def initialize(array, number)
    @array = array
    @number = number
  end

  def group_by_length_of_username
    sort = @array.sort_by { |name| name.length }
    group = sort.each_slice(@number).to_a
    group.each_with_index do |group, index|
      puts "Group #{index+1}: #{group.join(", ")}"
    end
  end

  def random_grouping
    group = @array.shuffle.each_slice(@number).to_a
    group.each_with_index do |group, index|
      puts "Group #{index+1}: #{group.join(", ")}"
    end
  end
end


g = Grouping.new(["hello", "hi", "yes", "no"], 2)
g.group_by_length_of_username

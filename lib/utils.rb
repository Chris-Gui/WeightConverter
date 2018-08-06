class Utils
  def find_max_item list
    max_weight = list[0].weight
    max_item = list[0]

    list.each do |l|
      if l.weight > max_weight
        max_weight = l.weight
        max_item = l
      end
    end

    max_item
  end

  def find_min_item list
    min_weight = list[0].weight
    min_item = list[0]

    list.each do |l|
      if l.weight < min_weight
        min_weight = l.weight
        min_item = l
      end
    end

    min_item
  end

  def print_max_and_min max_item, min_item
    puts "Max weight was #{max_item.weight} c in #{max_item.name}"
    puts "Min weight was #{min_item.weight} c in #{min_item.name}"
  end
end
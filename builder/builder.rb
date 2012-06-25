# 1. type builder interface

class Builder
  def build_part1
  end

  def build_part2
  end

  def build_part3
  end

end

# 2. type builder implementations

class ComputerBuilder < Builder
  def build_part1
    puts "Building part1: motherboard"
  end

  def build_part2
    puts "Building part2: CPU"
  end

  def build_part3
    puts "Building part3: display"
  end
end

class TableBuilder < Builder
  def build_part1
    puts "Building part1: legs"
  end

  def build_part2
    puts "Building part2: top"
  end

  def build_part3
    puts "Building part3: mounting"
  end
end

# 3. director

class Director
  def construct(builder)
    builder.build_part1
    builder.build_part2
    builder.build_part3
  end
end

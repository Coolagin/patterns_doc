# Создание фабрики для реализации 1
class RealisationFactory1
  def create_button
    Realisation_1.new
  end
end

# Создание фабрики для реализации 2
class RealisationFactory2
  def create_button
    Realisation_2.new
  end
end

# Базовый клас
class BaseClass
  attr_accessor :caption
end

# Реализация класса
class Realisation_1 < BaseClass
  def render
    puts "I`m Realisation_1 #{@caption}"
  end
end

# Реализация класса
class Realisation_2 < BaseClass
  def render
    puts "I`m Realisation_2 #{@caption}"
  end
end

class Application
  def initialize(factory)
    button = factory.create_button
    button.caption = 'Start'
    button.render
  end
end


class ApplicationRunner
  def self.run
    Application.new(self.createSpecificFactory)
  end

  def self.createSpecificFactory
    if use_realisation_1
      RealisationFactory1.new
    else
      RealisationFactory2.new
    end
  end
end

ApplicationRunner.run

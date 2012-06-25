#
# Базовый объект строительства
#
class Pizza
  attr_accessor :pastry, :sauce, :garniture
end
 
#
# Builder - класс строитель
#
class BuilderPizza
  attr_reader :pizza
 
  def create_new_pizza
    @pizza = Pizza.new
  end
 
  def get_pizza
    "Your order. pastry: #{@pizza.pastry}, sauce: #{@pizza.sauce}, garniture: #{@pizza.garniture}"
  end
end
 
#
# BuilderConcret - Конкретный строитель 1
#
class BuilderPizzaHawaii < BuilderPizza
  def build_pastry  
    @pizza.pastry = 'normal'
  end
 
  def build_sauce
    @pizza.sauce = 'soft'
  end
 
  def build_garniture
    @pizza.garniture = 'jambon+ananas'
  end
end
 
#
# BuilderConcret - Конкретный строитель 2
#
class BuilderPizzaSpicy < BuilderPizza
  def build_pastry
    @pizza.pastry = 'puff'
  end
 
  def build_sauce
    @pizza.sauce = 'hot'
  end
 
  def build_garniture
    @pizza.garniture = 'papperoni+salami'
  end
end
 
#
# Director - Управляющий класс, запускающий строительство
#
class Waiter
  def set_builder_pizza(bp)
    @builder_pizza = bp
  end
 
  def get_pizza
    @builder_pizza.get_pizza
  end
 
  def construct_pizza
    @builder_pizza.create_new_pizza
    @builder_pizza.build_pastry
    @builder_pizza.build_sauce
    @builder_pizza.build_garniture
  end
end
 
waiter = Waiter.new
 
builder_pizza_hawaii = BuilderPizzaHawaii.new
builder_pizza_spicy  = BuilderPizzaSpicy.new
 
waiter.set_builder_pizza(builder_pizza_hawaii)
waiter.construct_pizza
 
puts waiter.get_pizza
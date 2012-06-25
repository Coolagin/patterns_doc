# При частом изменении класса, преимущества объектно-ориентированного подхода становятся очень полезными,
# позволяя делать изменения в программе, обладая минимальными сведениями о реализации программы.
# Шаблон bridge является полезным там, где часто меняется не только сам класс, но и то, что он делает.

module Bridge

  # Абстракция нашей реализации
  # определяем интерфейс абстракции
  # хранит ссылку на объект  Implementor
  class Abstraction
    attr_accessor :implementator

    def info
      implementator.info
    end
  end

  # RefinedAbstraction - уточненная абстракция
  # расширяет интерфейс, определенный абстракцией Abstraction
  class RefinedAbstraction<Abstraction

  end

  # Implementor - реализатор
  # определяет интерфейс для классов реализации. Он не обязан точно
  # соотведствовать интерфейсу класса Abstraction. На самом деле оба
  # интерфейса могут быть совершенно различны. Обычно интерфейс класса
  # Implementor представляет только примитивные операции, а класс
  # Abstraction определяет операции более высокого уровня,
  # базирующиеся на этих примитивах
  class Implementor
    def info

    end
  end

  # ConcreteImplementor - конкретный реализатор
  # содержит конкретную реализацию интерфейса

  # Реализатор ConcreteImplementorA
  class ConcreteImplementorA<Implementor
    def info
      p "ConcreteImplementorA"
    end
  end

  # Реализатор ConcreteImplementorB
  class ConcreteImplementorB<Implementor
    def info
      p "ConcreteImplementorB"
    end
  end

end

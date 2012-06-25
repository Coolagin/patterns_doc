module Sample
  module Bridge
    # Создаем нашу абстракцию
    class Abstraction
      attr_accessor :implementator

      def parse_data
        implementator.parse_data
      end
    end

    # Расширяем абстракцию создаем например класс Exchange
    # через который будем реализовывать обмен
    class Exchange<Abstraction

    end

    class Implementator

      def parse_data

      end
    end

    # Создаем реализацию 1
    class Implemet1<Implementator
      def parse_data
        p "Run implemet 1"
      end
    end
    # Создаем реализацию 2
    class Implemet2<Implementator
      def parse_data
        p "Run implemet 2"
      end
    end
    # Создаем реализацию 3
    class Implemet3<Implementator
      def parse_data
        p "Run implemet 3"
      end
    end

  end
end

###########  В работе
exchange=Exchange.new

exchange.implementator=Implemet1.new
exchange.parse_data

exchange.implementator=Implemet2.new
exchange.parse_data

#> Run implemet 1
#> Run implemet 2

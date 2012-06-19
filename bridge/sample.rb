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

    # Создаем реализацию обмена для 1С
    class OneC<Implementator
      def parse_data
        p "1c data"
      end
    end
    # Создаем реализацию обмена для Sclados
    class Sclados<Implementator
      def parse_data
        p "Sclados data"
      end
    end
    # Создаем реализацию обмена для Traider
    class Traider<Implementator
      def parse_data
        p "Traider data"
      end
    end

  end
end

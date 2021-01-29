module Comportamiento
    COMIDA_MAX = 1000
    HORAS_DORMIR = 8

    class Comer
    end

    class Desayuno < Comer
    end

    class Almuerzo < Comer
    end

    class Once < Comer
    end

    def self.about
        'soy un modulo con herramientas'
    end
end

module Descanso
    module Mañana        
        HORAS = 2       # Descanso::Mañana::HORAS
    end

    module Tarde
        HORAS = 3       # Descanso::Tarde::HORAS
    end

    module Noche
        HORAS = 8       # Descanso::Noche::HORAS
    end

    class Comer         # Descanso::Comer.new
    end
end

# puts Comportamiento::HORAS_DORMIR
# puts Comportamiento.about

# desayuno = Comportamiento::Desayuno.new
# desayuno2 = Descanso::Desayuno.new

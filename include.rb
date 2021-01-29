module Preguntas
    def self.para_mi
    end

    def quien_soy
        'soy algo, pero no sé aun'
    end

    def como_estoy
        'bien gracias'
    end

    def que_quiero
        'comeeeeeer'
    end
end

class Cosa
    # include Preguntas     # agrega los métodos del módulo a la instancia
    # extend Preguntas      # agrega los métodos del módulo a la clase

    attr_reader :nombre

    def initialize(nombre)
        @nombre = nombre
    end
end
module Preguntas
    def self.para_mi
    end

    module InfoMia
        def quien_soy
            'soy algo, pero no sé aun'
        end
    end

    class Nose
    end

    def como_estoy
        'bien gracias'
    end

    def que_quiero
        'comeeeeeer'
    end
end

class Cosa
    # mixins
    # include Preguntas     # agrega los métodos del módulo a la instancia
    # extend Preguntas::InfoMia      # agrega los métodos del módulo a la clase
    include Preguntas

    attr_reader :nombre, :nose

    def initialize(nombre=nil)
        @nombre = nombre
        @nose = Nose.new    # agrega un objeto como atributo inicial de una instancia si se usa el include
    end

    def crear_instancia     # la instancia puede crear otras instancias de la clase Nose si se usa el include
        Nose.new
    end

    def self.instancia_nose     # la clase Cosa puede crear instancias de la clase Nose si se usa el include
        Nose.new
    end
end
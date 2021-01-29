class Persona
    attr_reader :nombre, :edad, :rrss

    def initialize(nombre, edad, *rrss)
        @nombre = nombre
        @edad = edad
        @rrss = rrss.empty? ? nil : rrss     
    end
end

class RedSocial
    attr_reader :tipo

    def initialize(tipo)
        @tipo = tipo
    end
end

# deyna = Persona.new('deyna', 20)
# print deyna.rrss
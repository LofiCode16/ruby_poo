class Construction
    attr_accessor :edificios
    attr_accessor :oficinas
    attr_accessor :inmobiliarias

    def initialize()
        @inmobiliarias = [Inmobiliaria.new('Arboleda'),Inmobiliaria.new('Inmob'),Inmobiliaria.new('Inmob2')]
        @edificios = [Building.new('Pepito',@inmobiliarias[0]),Building.new('Juanito',@inmobiliarias[1]),Building.new('Parque',@inmobiliarias[2])]
        @oficinas = [Oficinas::Administrativa.new(),Oficinas::Administrativa.new(),Oficinas::Administrativa.new(),Oficinas::Administrativa.new()]
    end

    def agregar_edificio(edificio)
        @edificios.push(edificio)
    end

    def agregar_inmobiliaria(inmobiliaria)
        @inmobiliarias.push(inmobiliaria)
    end

end

class Inmobiliaria
    @nombre
    
    def initialize(nombre)
        @nombre = nombre
    end
end

class Building


    attr_accessor :inmobiliaria

    def initialize(nombre, inmobiliaria)
        @nombre = nombre
        @inmobiliaria = inmobiliaria
        @oficinas = [Oficinas::Administrativa, Oficinas::Ventas]
    end
end

module Oficinas

    class Oficina
    end
    
    class Administrativa < Oficina
    end
    
    class Ventas < Oficina
    end

end


constructora = Construction.new()
inmobiliaria = Inmobiliaria.new('adjks')
edificio = Building.new('aasldjf',inmobiliaria)
constructora.agregar_edificio(edificio)
constructora.agregar_inmobiliaria(Inmobiliaria.new('Inmobiliaria Pepito'))
constructora.edificios[0].inmobiliaria = constructora.inmobiliarias[3]

print constructora.edificios

# print constructora.oficinas
# print constructora.edificios

# Constructora > Inmobiliaria > Edificio > Oficina 

# 1.- construir 3 edificios
# 2.- cada edificio pertenece a una inmobiliaria
# 3.- los edificios son hechos por la misma constructora
# 4.- cada edificio tendrá una oficina administrativa y una de ventas
# 5.- la inmobiliaria tendrá una oficina administrativa y 3 de ventas
# 6.- la constructora tendrá 4 oficinas administrativas


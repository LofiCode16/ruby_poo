require_relative 'office'

class Building
    include Office::Sales
    include Office::Admin

    attr_reader :nombre, :dptos, :inmobiliaria, :constructora
    @@cant = 0

    def initialize(nombre, dptos, direccion, inmobiliaria, constructora)
        @nombre = nombre
        @dptos = dptos
        @direccion = direccion
        @oficina_ventas = SalesOffice.new("oficina de ventas #{nombre}", direccion)
        @oficina_administracion = AdminOffice.new("oficina administracion #{nombre}", direccion)

        if inmobiliaria.length == 1 && constructora.length == 1
            @constructora = constructora
            @inmobiliaria = inmobiliaria
        else
            raise ArgumentError.new('Sólo puede pertenecer a una inmobiliaria y una constructora')
        end

        @cant += 1
    end

    def self.cant
        @@cant
    end
end

class Construction
    attr_reader :nombre

    def initialize(nombre)
        @nombre = nombre
    end
end

class RealState
    attr_accessor :nombre, :direccion

    def initialize(nombre, direccion)
        @nombre = nombre
        @direccion = direccion
    end
end

# 1.- construir 3 edificios
# 2.- cada edificio pertenece a una inmobiliaria
# 3.- los edificios son hechos por la misma constructora
# 4.- cada edificio tendrá una oficina administrativa y una de ventas
# 5.- la inmobiliaria tendrá una oficina administrativa y 3 de ventas
# 6.- la constructora tendrá 4 oficinas administrativas

constructora = Construction.new('constructora uno')

inmobiliaria1 = RealState.new('imnouno', 'lejos 456')
inmobiliaria1 = RealState.new('imnodos', 'medio lejos 456')
inmobiliaria1 = RealState.new('imnotres', 'cerca 456')

edificio1 = Building.new('edificio alto', 200, 'lejos 123', inmobiliaria1, constructora)
edificio2 = Building.new('edificio medio', 150, 'cerca 123', inmobilairia2, constructora)
edificio3 = Building.new('edificio bajo', 100, 'muy cerca 123', inmobiliaria3, constructora)
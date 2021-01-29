class Persona
    attr_accessor :nombre, :mascotas

    def initialize(nombre, *mascotas) # splat operator
        @nombre = nombre
        @mascotas = mascotas
    end
end

class Mascota
    attr_accessor :nombre

    def initialize(nombre)
        @nombre = nombre
    end

end

negro = Mascota.new('negro')
manchas = Mascota.new('manchas')
careweo = Mascota.new('careweo')

nico = Persona.new('Nico', negro, manchas, careweo)

# nico.mascotas = [negro, manchas, careweo]
#
# print nico.mascotas

for i in nico.mascotas
    puts i.nombre
end
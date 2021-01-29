# class Persona

#     attr_accessor :nombre, :edad

#     # attr_writer :nombre, :edad
#     # attr_reader :nombre, :edad

#     # def nombre=(nombre) #setter
#     #     @nombre = nombre
#     # end

#     # def nombre #getter
#     #     @nombre
#     # end

#     # def edad= (edad)
#     #     @edad = edad
#     # end

#     # def edad
#     #     @edad
#     # end

#     def saludar
#         puts 'holaaaaa'
#     end

# end

# # coty = Persona.new

# class Perro

#     def ladrar
#         puts 'guau guau!'    
#     end

# end

# class Vehiculo

#     def encender
#         @estado = 'encendido'
#     end

#     def apagar
#         @estado = 'apagado'
#     end

#     def ver_estado
#         @estado
#     end

# end


# class Empresa

#     attr_accessor :direccion
#     attr_reader :nombre

#     # def nombre
#     #     @nombre
#     # end

#     # def direccion
#     #     @direccion
#     # end

#     # def direccion=(direccion)
#     #     @direccion = direccion
#     # end

# end


# class Casa

#     attr_accessor :color

#     def initialize(color='blanco')
#         @color = color
#     end   

# end #heeey!

# # choza = Casa.new() #'haloja' 

# class Casa
#     def self.about
#         'soy una casa'
#     end
# end


# extender una clase usando Monkey Patching
class String
    def palindrome?
        self.reverse == self
    end
end
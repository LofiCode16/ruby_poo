# class Vehiculo

#     attr_accessor :color, :ruedas, :motor

#     def encender
#         'brrruummmmm'
#     end

#     def apagar
#         'me apague'
#     end
# end

# class Aeronave 
# end

# class Avion < Aeronave
# end

# class Avion < Vehiculo

#     attr_accessor :alas, :turbinas, :caja_negra

#     def despegar
#         'voy subiendooooo'
#     end

#     def aterrizar
#         'voy bajandooooo'
#     end
# end

# class Camion < Vehiculo

#     attr_accessor :acoplado, :estanque_extra, :litera

#     def acoplar_carga
#         'tomé la carga'
#     end

#     def desacoplar_carga
#         'solté la carga'
#     end
# end

# class Leche
#     attr_accessor :nombre   

#     def que_soy
#         'soy literalmente leche'
#     end
# end

# class Helado < Leche

#     # attr_reader :nombre # no resuelve la sobrescritura de la encapsulación, sólo la complementa

#     def nombre=(nombre)
#         raise NoMethodError.new('No puedes asignar un nombre')
#     end

#     def nombre # -----> :nombre
#         raise NoMethodError.new('no puedes ver el nombre')
#     end

#     def nombre
#         'soy un nombre'
#     end

#     def que_soy 
#         super + 'Tengo forma de helado'
#     end

#     # def que_soy
#     #     'soy literalmente leche'
#     #     'tengo forma de helado'
#     # end
# end

# # class Paleta < Helado
# # end

# # class PaletaDoble < Paleta
# # end

# # class PaletaDeAgua < PaletaDoble
# # end


# class Auto
#     attr_accessor :encendido
#     @@cantidad = 0

#     def verme_al_espejo
#         self  # dentro de un metodo de instancia hace referencia a la instancia
#     end

#     def encender
#         self.encendido = true
#     end

#     def Auto.cantidad
#         @@cantidad
#     end

#     def self.cantidad=(cantidad)
#         @@cantidad = cantidad
#     end

#     def self.verme_a_mi_mismo # en el nombre de un método hace referencia a la clase
#         self # dentro de un método de clase hace referencia a la clase
#     end
# end

# Auto.cantidad

# Auto.new.encender
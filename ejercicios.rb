# class Producto
#     attr_reader :nombre, :stock

#     def initialize(nombre, stock=0)
#         @nombre = nombre
#         @stock = stock
#     end
# end

# producto1 = Producto.new("jabon", 10);
# producto2 = Producto.new("bebida")

# puts producto1.nombre
# puts producto1.stock

# puts producto2.nombre
# puts producto2.stock

class Punto
    attr_reader :x, :y

    def initialize (x,y)
        @x = x
        @y = y
    end

    def avanzar ()
        @x += 1
    end
end

punto1 = Punto.new(1,1)
puts punto1.x
puts punto1.y

# punto1 = punto1.avanzar() # ---> x += 1 ---> 4
punto1.avanzar()
punto1.avanzar()
punto1.avanzar()

puts punto1.x
puts punto1.y



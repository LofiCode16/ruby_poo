require_relative "office"

class Building
    include Office
    attr_accessor :nombre, :realState, :construction, :venta, :admin
    
    def initialize (nombre, realState, construction)
        @nombre = nombre
        @realState = realState
        @construction = construction
        @venta = Sales::Sales.new("Oficina Venta #{self.nombre}")
        @admin = Admin::Admin.new("Oficina Administración #{self.nombre}")
    end
end



class Construction #constructora
    include Office
    attr_accessor :nombre, :admins

    def initialize (nombre)
        @nombre = nombre
        @admins = []
        4.times do |i|
            @admins.push(Admin::Admin.new("Oficina de Administración #{i+1}"))
        end
    end

end

class RealState #inmo
    include Office
    attr_accessor :nombre, :admin, :ventas
   
    def initialize (nombre)
        @nombre = nombre
        @admin = Admin::Admin.new("Oficina de administración #{self.nombre}")
        @ventas = []
        3.times do |i|
            @ventas.push(Sales::Sales.new("Oficina de venta #{i+1}"))
        end
    end

end


constru = Construction.new ('Constructora 1')

inmo1 = RealState.new('Inmobiliaria  1')
inmo2 = RealState.new('Inmobiliaria 2')
inmo3= RealState.new('Inmobiliaria 3')

edificio1 = Building.new('edificio 1', inmo1, constru)
edificio2 = Building.new('edificio 2', inmo2, constru)
edificio3 = Building.new('edificio 3', inmo3, constru)


puts constru.nombre
puts inmo1.nombre
puts edificio1.nombre

constru.admins.each do |i|
    puts i.name
end

inmo1.ventas.each do |i|
    puts i.name
end

puts edificio1.nombre
puts edificio1.construction.nombre
puts edificio1.realState.nombre


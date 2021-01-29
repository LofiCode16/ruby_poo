class Persona

    attr_accessor :edad
    attr_writer :nombre

    @@cant = 0

    def initialize(nombre, edad)
        @nombre = nombre
        @edad = edad
        @@cant += 1
    end

    def nombre
        @nombre
    end

    def saludar
        puts 'holaaaaaa'
       
        @nombre = 'nada'
        puts @edad
       
        puts "
            #{self.nombre='nada'}\n 
            #{self.edad}
        "                       # self dentro del método de instancia ------> instancia                  
        
    end


    def self.quien_soy # self en el nombre del metodo ----> metodo de clase
        "soy una clase que crea personas, y he creado a #{@@cant}"
    end

end
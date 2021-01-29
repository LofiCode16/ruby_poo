# Polimofismo en herencia

class Animal
    def hablar
        '*talks in animal*'
    end
end

class Perro < Animal
    def hablar
        'guau guau'
    end
end

class Gato < Animal
    def hablar 
        'rauuuuuul'
    end
end

class Vaca < Animal
    def hablar
        'muuuuuh'
    end
end

class Vehiculo
    def avanzar
    end
end

class Camion < Vehiculo
    def avanzar
        '*se mueve por la calle*'
    end
end

class Avion < Vehiculo
    def avanzar
        'estoy volandooooooo'
    end
end

class Barco < Vehiculo
    def avanzar
        'bajo las velas y que me empuje el aire'
    end
end

# Duck Typing
# Patron decorador

# class Duck
#     def initialize(name)
#         @name = :name
#     end
#     def eat
#         puts("Duck#{@name} es comida")
#     end
#     def speack
#         puts("Duck #{@name} dice quack")
#     end
#     def sleep
#         puts("  #       ")
#     end
# end
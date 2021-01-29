module Office
    module Sales
        class SalesOffice
            def initialize(nombre, direccion)
                @nombre = nombre 
                @direccion = direccion
            end
        end
    end

    module Admin
        class AdminOffice
            def initialize(nombre, direccion)
              @nombre = nombre
              @direccion
            end
        end
    end
end
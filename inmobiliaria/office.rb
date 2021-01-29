module Office
    module Sales
        class Sales
            attr_accessor :name
            def initialize(name)
                @name = name
            end
        end
    end

    module Admin
        class Admin
            attr_accessor :name
            def initialize(name)
                @name = name
            end
        end
    end
end

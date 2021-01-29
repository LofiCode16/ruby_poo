puts 'iniciando app'

begin 
   suma = 2 + 'a'
rescue TypeError => e
    puts "ups, algo se rompió -----> #{e.message}"
    puts "recorrido del stack: ----> #{e.backtrace}"

rescue NoMethodError => e
    puts "otro error ------> #{e}"
rescue NameError => e
    puts "este error lo conozco... -----> #{e}"
else
    puts 'parece que la suma salio bien ewe'
end

puts 'app terminada'

# intenta {
#     hacer algo
# } atrapa(excepcion) {
#     haz algo con la excepcion
# }

# try {

# } catch(e) {

# } catch(e) {

# }


require './lib/gcd.rb'
require './lib/racionales.rb'

if (not ARGV[0])	#Controlamos que el usuario introduzca correctamente los argumentos de entrada
  puts "Error de entrada. Escriba parametros de entrada de la forma: programa.rb [arg1 arg2 arg3 arg4]"
  puts "Ej) programa.rb 2 3 4 5"
  puts "Crea los racionales 2/3 y 4/5"
else
  racional1 = NumerosRacionales.new(ARGV[0].to_i,ARGV[1].to_i)
  racional2 = NumerosRacionales.new(ARGV[2].to_i,ARGV[3].to_i)
  puts "\nRACIONALES DE ENTRADA"
  puts "----------------------"
  puts "racional1 = #{racional1} = #{racional1.to_f}"
  puts "racional2 = #{racional2} = #{racional2.to_f}"

  puts "\nMETODOS"
  puts "--------"  
  puts "Metodo absoluto de rac1= #{racional1.abs}"
  puts "El reciproco de rac1= #{racional1.reciprocal}"
  puts "Opuesto rac1= #{-racional1}"
  
  puts "\nOPERACIONES"
  puts "------------"
  puts "Suma = #{racional1+racional2}"
  puts "Resta = #{racional1-racional2}"
  puts "Producto = #{racional1*racional2}"
  puts "Division = #{racional1/racional2}"
  puts "Modulo = #{racional1%racional2}"
  
  puts "\nCOMPARADORES DE IGUALDAD"
  puts "-------------------------"
  if (racional1==racional2)
    puts "Las fracciones son iguales o equivalentes"
  else
    puts "No son iguales"
  end
  
  if (racional1<racional2)
    puts "racional1 es menor estricto que racional2"
  end
  if (racional1<=racional2)
    puts "racional1 es menor o igual que racional2"
  end
  
  if (racional1>racional2)
    puts "racional1 es mayor estricto que racional2"
  end
  if (racional1>=racional2)
    puts "racional1 es mayor o igual que racional2"
  end

  n = (racional1<=>racional2)
  puts "sol= #{racional1 <=> racional2}"  
  case n
    when -1
      puts "Es menor"
    when 0
      puts "Son iguales"
    when 1
      puts "Es mayor"
    when nil
      puts "Otro caso"
  end
  
end
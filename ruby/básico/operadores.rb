numero1 = 0
numero2 = 0
total = 0

puts 'Informe o número 1:'
numero1 = gets.chomp.to_i

puts 'Informe o número 2:'
numero2 = gets.chomp.to_i

#total = numero1 + numero2;
#total = numero1-numero2
#total = numero1*numero2
total = numero1/numero2
puts total

#Comparação:
v1 = 21
v2 = 21

puts v1 >= v2
puts v1 != v2
#igual a:
puts v1 == v2
#igual a:
puts v1.eql?(v2)
=begin
idade = 18

if idade > 18
  puts "Maior de idade"
elsif idade == 18
  puts "Tah quase..."
else
  puts "Menor de idade"
  puts "Se ferrou."
end

puts "Maior de idade" if idade > 18

# qualquer valor que nao seja false ou nil será True

achou ||= "AAAAAA"
# achou = "AAAAA" unless achou

x = 10 if achou
x = 20 unless achou # if !achou

if achou
  puts "Encontrado"
else
  puts "Nao encontrado"
end
=end
# Exemplo 1
#IF and ELSES
=begin
nota = 8

if nota >= 9
  puts 'Nota Alta! Parabéns, nerd do carai!'
elsif nota > 7 and nota < 9
  puts 'Tá razoável...'
else
  puts 'É, rapaz... Estuda um pouco mais...'
end
=end

#Exemplo 2
#One-line if
=begin
puts "tá na boa" if nota > 6
=end

#Exemplo 3
#Sempre será "setado" TRUE, a menos que seja false ou nil
=begin
media = 3
if media
  puts "passou"
else
  puts "é... deu merda" #sempre cairá aqui, pq media não pode ser false ou nil
end
=end

#Exemplo 4
#Classes
=begin
#lista = Array.new  ---- old-school style
list = ["Saulo", "Rudy", "Valada"] #new-style! bom!!!!
list << "Diego" #add new item to "list"
list.each {|e| puts e} #cada elemento da lista é "e"
list.respond_to? :simbolo #verifica se lista responde ao símbolo passado
=end

#Exemplo 5
#Hashes

=begin #maneira incorreta, chaves como strings, criando diversas instâncias de strings
hash = {'servidor' => 'localhost', porta' => 1023}
puts hash['servidor'] #utilizando a chave do hash
puts hash['porta']
=end

#maneira mais correta
=begin
hash = {:servidor => 'localhost', :porta => 1023}
puts hash[:servidor] #utilizando a chave do hash
puts hash[:porta]
hash[:username] = "root" #adicionar novo item na chave :username
hash.delete :porta #remover valor na chave indicada
puts hash.inspect
=end


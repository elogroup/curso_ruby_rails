codigo = Proc.new{ puts "Sou uma instrucao ruby" }
outro_codigo = Proc.new do
  (1..10).each{|i| puts i}
end

def executa_blocos(&block)
  yield if block_given?
end

#executa_blocos codigo
#executa_blocos outro_codigo

executa_blocos{puts "novo codigo feito na hora"}
executa_blocos do
  puts "Mais um codigo expresso"
end

executa_blocos
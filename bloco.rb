# Proc's ou lambdas
codigo = Proc.new{ puts "sou uma instrucao ruby" }

outro_codigo = Proc.new do
  (1..10).each{|i| puts i}
end

def executa_blocos(&block)
  yield if block_given?
end

# executa_blocos(codigo)
# executa_blocos(outro_codigo)
executa_blocos { puts "sou um codigo lambda" }
executa_blocos do
  puts "sou um bloco composto"
  puts "sou um bloco com do e end"
end
executa_blocos

lista = ['saulo', 'rudy', 'leone', 'valada', 'diogo']

#definições triviais
#def show_array_elements(array, bloco)
#  for elemento in array
#    puts elemento
#  end
#end

#def show_array_elements_reversed(array)
#  for elemento in array
#    puts elemento.reverse
#  end
#end

#show_array_elements(lista)
#show_array_elements_reversed(lista) #função igual, apenas com a diferença no display

#chamada de blocos de códigos
#bloco = Proc.new(puts "sou um bloco de código")
#bloco.call

#utilizando chamadas de blocos
#bloco = Proc.new {|e| puts e}
#bloco_reversed = Proc.new {|e| puts e.reverse}
#def show_array_elements(array, bloco)
#  for elemento in array
#    bloco.call elemento
#  end
#end

#show_array_elements(lista, bloco)
#show_array_elements(lista, bloco_reversed)

#chamadas com yield
def show_array_elements(array, &bloco) #& -> Recebe bloco de código
  for elemento in array
    yield elemento
  end
end

show_array_elements(lista){|e| puts e} #bloco de código "passado" por argumento
#ou inversamente
show_array_elements(lista){|e| puts e.reverse}

#redefinição da classe string
class String
  def sou_sinistro
    puts "HEHEHEHEHE"
  end
end

a = "dasdsa"
a.sou_sinistro

#metaprogramação em ruby
class Aluno
end

def ensina_falar(estudante)
  def fala #redefinindo a classe...
    puts "sei falar..."
  end
end

maria = Aluno.new
joao = Aluno.new
ensina_falar(joao)
joao.fala


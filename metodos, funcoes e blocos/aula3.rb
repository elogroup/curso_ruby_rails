class Aluno
  def method_missing(metodo, *args, &bloco)  #Definição de métodos dinâmicos
    puts "não sei executar o método, #{metodo}"
  end
end

aluno = Aluno.new
aluno.faz_algo #inicialmente, teríamos erro aqui, pois o método faz_algo não existe na instância de Aluno


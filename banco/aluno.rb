class Aluno
  
end

joao = Aluno.new
puts "Joao sabe falar #{joao.respond_to? :fala}"

maria = Aluno.new
puts "Maria sabe falar #{maria.respond_to? :fala}"

pai_bruno = Aluno.new
puts "Pai Bruno sabe falar #{pai_bruno.respond_to? :fala}"

def ensina_falar(alguem)
  def alguem.fala
    puts "sei falar"
  end
end

ensina_falar joao
ensina_falar maria

puts "Joao sabe falar #{joao.respond_to? :fala}"
puts "Maria sabe falar #{maria.respond_to? :fala}"
puts "Pai Bruno sabe falar #{pai_bruno.respond_to? :fala}"

#linha
=begin
  bloco de comentario
=end

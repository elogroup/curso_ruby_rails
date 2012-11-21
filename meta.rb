class Aluno
end

class Professor
  def ensina_falar(aluno)

    def aluno.fala
      puts "Jah sei falar."
    end

  end
end

joao = Aluno.new
sabe_falar = joao.respond_to?(:fala)
puts "Joao sabe falar: #{sabe_falar}"

professor = Professor.new
professor.ensina_falar(joao)
sabe_falar = joao.respond_to?(:fala)
puts "Joao sabe falar: #{sabe_falar}"
joao.fala

maria = Aluno.new
sabe_falar = maria.respond_to?(:fala)
puts "Maria sabe falar: #{sabe_falar}"


class Aluno
  def fala
    puts "agora eu tbm falo"
  end
end

joaquina = Aluno.new
puts joaquina.fala
puts joao.fala
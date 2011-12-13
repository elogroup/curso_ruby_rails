#encoding: utf-8
valor = 10
puts valor.class

total = valor + 20
puts "total de #{valor} + 20 #{total}"

class Fixnum
  def +(num)
    self.-(num)
  end
end

outro_valor = 100
puts outro_valor
puts "resultado de #{outro_valor} + 20: #{outro_valor + 20}"
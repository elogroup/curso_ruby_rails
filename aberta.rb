puts "Carregou"

# Open Class
class Fixnum
  #modificou o comportamento
  def + (value)
    self.-(value)
  end
end
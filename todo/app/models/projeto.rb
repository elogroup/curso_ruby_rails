class Projeto < ActiveRecord::Base
  validates_presence_of :nome, :message => 'deve ser preenchido'
  validates_size_of :nome, :minimum => 3
end

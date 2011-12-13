class AddDataFinalizacaoToTarefas < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :data_finalizacao, :datetime
  end

  def self.down
    remove_column :tarefas, :data_finalizacao
  end
end


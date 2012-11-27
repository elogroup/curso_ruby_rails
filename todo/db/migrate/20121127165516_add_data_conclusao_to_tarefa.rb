class AddDataConclusaoToTarefa < ActiveRecord::Migration
  def change
    add_column :tarefas, :data_conclusao, :date_time
  end
end

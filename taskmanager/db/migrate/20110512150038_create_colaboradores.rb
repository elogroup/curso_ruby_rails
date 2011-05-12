class CreateColaboradores < ActiveRecord::Migration
  def self.up
    create_table :colaboradores do |t|
      t.string :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :colaboradores
  end
end

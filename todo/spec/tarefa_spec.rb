require 'spec_helper'

describe Tarefa do
  let(:projeto){Projeto.new}
  let(:tarefa){described_class.new(projeto_id: projeto.id, descricao: "")}

  context "#concluir!" do
    it "deve assumir data de conclusao como a data atual" do
      time_before = DateTime.now
      tarefa.concluir!
      time_after = DateTime.now
      tarefa.data_conclusao.should_not be_nil
      tarefa.data_conclusao.should >= time_before
      tarefa.data_conclusao.should <= time_after
    end
  end

  context "#concluida?" do
    it "retorna verdadeiro se tarefa tem data de conclusao" do
      tarefa.concluir!
      tarefa.concluida?.should be_true
    end

    it "retorna falso se nao tem data de conclusao" do
      tarefa.concluida?.should be_false
    end
  end
end

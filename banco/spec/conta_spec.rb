require '../lib/conta'

describe Conta do
  context "Initialize" do
    it "deve ser possivel criar uma conta inicializando seu saldo" do
      conta = Conta.new :agencia => 20, :numero => 30, :saldo => 100
      conta.saldo.should == 100
    end

    it "deve ser possivel criar uma conta inicializando seu titular" do
      conta = Conta.new :agencia => 20, :numero => 30, :titular => 'Mario'
      conta.titular.should == 'Mario'
    end

    it "deve lancar uma execao caso nao seja informado o numero" do
      expect{ Conta.new }.to raise_error(ArgumentError)
    end
    
    it "deve lancar uma execao caso nao seja informado a agencia"  do
      expect{ Conta.new :numero => 10, :saldo => 100 }.to raise_error(ArgumentError)
    end
    
  end

  context "Setter's" do
    subject {Conta.new :numero => 20, :agencia => 30}
    specify { subject.should_not respond_to :numero= }
    specify { subject.should_not respond_to :agencia= }
    specify { subject.should respond_to :titular= }
    specify { subject.should_not respond_to :saldo= }
  end
  
  context "Getter's" do
    subject {Conta.new :numero => 20, :agencia => 30}
    specify { subject.should respond_to :numero }
    specify { subject.should respond_to :agencia }
    specify { subject.should respond_to :titular }
    specify { subject.should respond_to :saldo }
  end
  
  context "Behaviour" do
  
    subject do
      Conta.new :numero => 20, :agencia => 30, :saldo => 100, :titular => "Joao"
    end

    it { subject.numero.should == 20 }
    it { subject.agencia.should == 30 }    
    it { subject.saldo.should == 100 }  
    it { subject.titular.should == "Joao" }
  end
  
end
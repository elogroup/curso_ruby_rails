require 'spec_helper'

describe "projetos/index.html.erb" do
  before(:each) do
    assign(:projetos, [
      stub_model(Projeto),
      stub_model(Projeto)
    ])
  end

  it "renders a list of projetos" do
    render
  end
end

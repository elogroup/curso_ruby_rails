require 'spec_helper'

describe "projetos/show.html.erb" do
  before(:each) do
    @projeto = assign(:projeto, stub_model(Projeto))
  end

  it "renders attributes in <p>" do
    render
  end
end

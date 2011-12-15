require 'spec_helper'

describe "projetos/new.html.erb" do
  before(:each) do
    assign(:projeto, stub_model(Projeto).as_new_record)
  end

  it "renders new projeto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projetos_path, :method => "post" do
    end
  end
end

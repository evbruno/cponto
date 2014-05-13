require 'spec_helper'

describe "pontos/edit" do
  before(:each) do
    @ponto = assign(:ponto, stub_model(Ponto,
      :ano => 1,
      :mes => 1,
      :entrada_manha => "MyString",
      :saida_manha => "MyString",
      :entrada_tarde => "MyString",
      :saida_tarde => "MyString"
    ))
  end

  it "renders the edit ponto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ponto_path(@ponto), "post" do
      assert_select "input#ponto_ano[name=?]", "ponto[ano]"
      assert_select "input#ponto_mes[name=?]", "ponto[mes]"
      assert_select "input#ponto_entrada_manha[name=?]", "ponto[entrada_manha]"
      assert_select "input#ponto_saida_manha[name=?]", "ponto[saida_manha]"
      assert_select "input#ponto_entrada_tarde[name=?]", "ponto[entrada_tarde]"
      assert_select "input#ponto_saida_tarde[name=?]", "ponto[saida_tarde]"
    end
  end
end

require 'spec_helper'

describe "pontos/index" do
  before(:each) do
    assign(:pontos, [
      stub_model(Ponto,
        :ano => 1,
        :mes => 2,
        :entrada_manha => "Entrada Manha",
        :saida_manha => "Saida Manha",
        :entrada_tarde => "Entrada Tarde",
        :saida_tarde => "Saida Tarde"
      ),
      stub_model(Ponto,
        :ano => 1,
        :mes => 2,
        :entrada_manha => "Entrada Manha",
        :saida_manha => "Saida Manha",
        :entrada_tarde => "Entrada Tarde",
        :saida_tarde => "Saida Tarde"
      )
    ])
  end

  it "renders a list of pontos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Entrada Manha".to_s, :count => 2
    assert_select "tr>td", :text => "Saida Manha".to_s, :count => 2
    assert_select "tr>td", :text => "Entrada Tarde".to_s, :count => 2
    assert_select "tr>td", :text => "Saida Tarde".to_s, :count => 2
  end
end

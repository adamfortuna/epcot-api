require 'spec_helper'

describe "dishes/index.html.haml" do
  before(:each) do
    assign(:dishes, [
      stub_model(Dish,
        :slug => "Slug",
        :restaurant_id => 1,
        :category => "Category",
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Dish,
        :slug => "Slug",
        :restaurant_id => 1,
        :category => "Category",
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of dishes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

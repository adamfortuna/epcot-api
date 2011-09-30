require 'spec_helper'

describe "dishes/new.html.haml" do
  before(:each) do
    assign(:dish, stub_model(Dish,
      :slug => "MyString",
      :restaurant_id => 1,
      :category => "MyString",
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new dish form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dishes_path, :method => "post" do
      assert_select "input#dish_slug", :name => "dish[slug]"
      assert_select "input#dish_restaurant_id", :name => "dish[restaurant_id]"
      assert_select "input#dish_category", :name => "dish[category]"
      assert_select "input#dish_name", :name => "dish[name]"
      assert_select "textarea#dish_description", :name => "dish[description]"
    end
  end
end

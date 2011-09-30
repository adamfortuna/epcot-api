require 'spec_helper'

describe "restaurants/new.html.haml" do
  before(:each) do
    assign(:restaurant, stub_model(Restaurant,
      :slug => "MyString",
      :country_id => 1,
      :category => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new restaurant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurants_path, :method => "post" do
      assert_select "input#restaurant_slug", :name => "restaurant[slug]"
      assert_select "input#restaurant_country_id", :name => "restaurant[country_id]"
      assert_select "input#restaurant_category", :name => "restaurant[category]"
      assert_select "input#restaurant_name", :name => "restaurant[name]"
    end
  end
end

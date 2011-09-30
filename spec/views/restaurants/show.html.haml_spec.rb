require 'spec_helper'

describe "restaurants/show.html.haml" do
  before(:each) do
    @restaurant = assign(:restaurant, stub_model(Restaurant,
      :slug => "Slug",
      :country_id => 1,
      :category => "Category",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Slug/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Category/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

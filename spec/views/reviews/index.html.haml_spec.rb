require 'spec_helper'

describe "reviews/index.html.haml" do
  before(:each) do
    assign(:reviews, [
      stub_model(Review,
        :reviewable_id => 1,
        :reviewable_type => "Reviewable Type",
        :user_id => 1,
        :rating => 1,
        :review => "MyText"
      ),
      stub_model(Review,
        :reviewable_id => 1,
        :reviewable_type => "Reviewable Type",
        :user_id => 1,
        :rating => 1,
        :review => "MyText"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reviewable Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

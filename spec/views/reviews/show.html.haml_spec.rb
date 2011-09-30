require 'spec_helper'

describe "reviews/show.html.haml" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :reviewable_id => 1,
      :reviewable_type => "Reviewable Type",
      :user_id => 1,
      :rating => 1,
      :review => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reviewable Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end

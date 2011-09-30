require 'spec_helper'

describe "reviews/edit.html.haml" do
  before(:each) do
    @review = assign(:review, stub_model(Review,
      :reviewable_id => 1,
      :reviewable_type => "MyString",
      :user_id => 1,
      :rating => 1,
      :review => "MyText"
    ))
  end

  it "renders the edit review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path(@review), :method => "post" do
      assert_select "input#review_reviewable_id", :name => "review[reviewable_id]"
      assert_select "input#review_reviewable_type", :name => "review[reviewable_type]"
      assert_select "input#review_user_id", :name => "review[user_id]"
      assert_select "input#review_rating", :name => "review[rating]"
      assert_select "textarea#review_review", :name => "review[review]"
    end
  end
end

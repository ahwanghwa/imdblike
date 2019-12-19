require 'rails_helper'

RSpec.describe "ratings/new", type: :view do
  before(:each) do
    assign(:rating, Rating.new(
      :vote => 1,
      :movie_id => 1,
      :user_id => 1
    ))
  end

  it "renders new rating form" do
    render

    assert_select "form[action=?][method=?]", ratings_path, "post" do

      assert_select "input[name=?]", "rating[vote]"

      assert_select "input[name=?]", "rating[movie_id]"

      assert_select "input[name=?]", "rating[user_id]"
    end
  end
end

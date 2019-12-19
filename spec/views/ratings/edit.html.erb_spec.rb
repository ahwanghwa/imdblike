require 'rails_helper'

RSpec.describe "ratings/edit", type: :view do
  before(:each) do
    @rating = assign(:rating, Rating.create!(
      :vote => 1,
      :movie_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit rating form" do
    render

    assert_select "form[action=?][method=?]", rating_path(@rating), "post" do

      assert_select "input[name=?]", "rating[vote]"

      assert_select "input[name=?]", "rating[movie_id]"

      assert_select "input[name=?]", "rating[user_id]"
    end
  end
end

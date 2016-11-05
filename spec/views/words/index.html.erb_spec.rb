require 'rails_helper'

RSpec.describe "words/index", type: :view do
  before(:each) do
    assign(:words, [
      Word.create!(
        :word => "Word"
      ),
      Word.create!(
        :word => "Word"
      )
    ])
  end

  it "renders a list of words" do
    render
    assert_select "tr>td", :text => "Word".to_s, :count => 2
  end
end

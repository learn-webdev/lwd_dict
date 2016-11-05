require 'rails_helper'

RSpec.describe "words/edit", type: :view do
  before(:each) do
    @word = assign(:word, Word.create!(
      :word => "MyString"
    ))
  end

  it "renders the edit word form" do
    render

    assert_select "form[action=?][method=?]", word_path(@word), "post" do

      assert_select "input#word_word[name=?]", "word[word]"
    end
  end
end

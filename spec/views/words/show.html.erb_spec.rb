require 'rails_helper'

RSpec.describe "words/show", type: :view do
  before(:each) do
    @word = assign(:word, Word.create!(
      :word => "Word"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Word/)
  end
end

require "rails_helper"

RSpec.feature "Showing an Article" do

  before do
    @article1 = Article.create(title: "The first article", body: "Body of first article")
    @article2 = Article.create(title: "The second article", body: "Body of second article")
  end

  scenario "Display individual article" do

    visit "/"

    click_link @article1.title

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(current_path).to eq(article_path(@article1))

  end


end
require "rails_helper"

RSpec.feature "Deleting an Article" do

  before do
    @article1 = Article.create(title: "The first article", body: "Body of first article")
    @article2 = Article.create(title: "The second article", body: "Body of second article")
  end

  scenario "A user Deletes an article" do

    visit "/"

    click_link @article1.title
    click_link "Delete Article"




    expect(page).to have_content("Article has been deleted")
    expect(current_path).to eq(articles_path)


  end



end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ARTICLES = {
  "Polar Bears Nearing Extinction" =>
    "National Geographic estimates that there are only 38 polars left on the planet.",
  "Drake Drops Two New Albums" =>
    "Drake releases the two part album Scorpion.",
  "Fourth of July Tips" =>
    "Here are some great tips to make fourth of July four times as special."
}

def seed_articles(articles_hash)
  articles_hash.each do |t, b|
    Article.create!(title: t, body: b)
  end

  p "Created #{Article.count} Articles."
end


seed_articles(ARTICLES)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data = {full_name: 'Wahyu Haryadi', email: 'wahyuharyadi@gmail.com', password: '1234abc'}
user = User.create(data)

user = User.first
articles = [
    {title: 'Title article 1', description: 'description article 1', user: user},
    {title: 'Title article 2', description: 'description article 2', user: user},
    {title: 'Title article 3', description: 'description article 3', user: user}
]

user = Article.create(articles)
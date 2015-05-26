# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Topic.delete_all
Comment.delete_all
Subforum.delete_all

User.create username: 'Michael', password: 'michael'
User.create username: 'WSFan', password: 'michael'
Subforum.create title: 'Sports'
Topic.create subforum_id: 1, title: 'White Sox', user: 'Michael', content: 'Why on earth did we start Noesi tonight?'
Comment.create topic_id: 1, user:'WSFan', post_number: 1, content: 'He is terrible'


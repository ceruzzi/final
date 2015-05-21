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

[{:username=> "Michael", :avata_url=> "http://www.wangdicholingresort.com/gifs/ura-village-in-bumthang.jpg", :age=> 24}].each do |usr|
  usr=User.new
  usr.username=user[:username]
  usr.avatar_url=user[:avatar_url]
  usr.age=user[:age]
  usr.save

[{:title=> "test", :subforum=> "School", :cotent=> "Are there any questions about thursday's test"}].each do |thd|
  thd=Topic.new
  thd.title=topic[:title]
  thd.subforum=topic[:subforum]
  thd.content=topic[:content]
  thd.save

[{:topic_id=> 1, :user=> "Michael", :post_number=> 1, :content=> "Looks like there are none."}].each do |pst|
  pst=Comment.new
  pst.topic_id=post[:topic_id]
  pst.user=post[:user]
  pst.post_number=post[:post_number]
  pst.content=post[:content]
  pst.save

[{:topic=> "school"},{:topic=> "sports"} ].each do |sub|
    sub=Subforum.new
    sub.topic=sub[:thread]
    sub.save
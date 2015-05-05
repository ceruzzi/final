# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Thread.delete_all
Post.delete_all
Subforum.delete_all

[{:username=> "Michael", :avata_url=> "http://www.wangdicholingresort.com/gifs/ura-village-in-bumthang.jpg", :age=> 24}].each do |place|
  usr=User.new
  usr.username=user[:username]
  usr.avatar_url=user[:avatar_url]
  usr.age=user[:age]
  usr.save

[{:thread_id=> 1, :title=> "test", :subforum=> "School", :cotent=> "Are there any questions about thursday's test"}].each do |place|
  thd=Thread.new
  thd.thread_id=thread[:thread_id]
  thd.title=thread[:title]
  thd.subforum=thread[:subforum]
  thd.content=thread[:content]
  thd.save

[{:thread=> 1, :user=> "Michael", :post_number=> 1, :content=> "Looks like there are none."}].each do |place|
  pst=Post.new
  pst.thread=post[:thread]
  pst.user=post[:user]
  pst.post_number=post[:post_number]
  pst.content=post[:content]
  pst.save

[{:topic=> "school"},{:topic=> "sports"} ].each do |place|
    sub=Subforum.new
    sub.topic=sub[:thread]
    sub.save
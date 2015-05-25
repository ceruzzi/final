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

[{:username=> "Michael", :password=>"michael"}].each do |user|
  usr=User.new
  usr.username=user[:username]
  usr.password=user[:password]
  #usr.avatar_url=user[:avatar_url]
 #usr.age=user[:age]
  usr.save
end

[{:title=> "test", :subforum_id=> 1, :cotent=> "Are there any questions about thursday's test"}].each do |topic|
  thd=Topic.new
  thd.title=topic[:title]
  thd.subforum_id=topic[:subforum_id]
  thd.content=topic[:content]
  thd.save
end
[{:topic_id=> 1, :user=> "Michael", :post_number=> 1, :content=> "Looks like there are none."}].each do |post|
  pst=Comment.new
  pst.topic_id=post[:topic_id]
  pst.user=post[:user]
  pst.post_number=post[:post_number]
  pst.content=post[:content]
  pst.save
end

[{:title=> "sports"}].each do |subforum|
    sub=Subforum.new
    sub.title=subforum[:thread]
    sub.save


end
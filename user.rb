require 'mechanize'

agent = Mechanize.new
page = agent.get('https://uni.likelion.org')

my_page = page.form_with(:action => "/users/sign_in") do |f|
    f.field_with(:name => "user[email]").value ="scy0626@likelion.org"
    f.field_with(:name => "user[password]").value ="85952904"
end.submit

page2 = agent.get("https://uni.likelion.org/users/89")
name = page2.search("#main > header > div > div > h1").map(&:text)
email = page2.search("#main > header > div > p:nth-child(2) > span").map(&:text)
subtitle = page2.search("#main > header > div > p.meta.mt-2 > span").map(&:text)
content = page2.search("#main > section > div > section > div").map(&:text)
#num = page2.search("").map(&:text)
    
puts name + email + subtitle + content
# csv << ["num", "name", "email", "subb"]
# (0..num.count-1).each do |c|
#   csv << [num.at(c), name.at(c), email.at(c), subb.at(c)]
# end
#end
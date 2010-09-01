require File.join(File.dirname(__FILE__),"config/environment.rb")
require "benchmark"

n = 10_000

Benchmark.bm do |x|
  x.report("using searchlogic finders") do 
    n.times { blogs = Blog.search({:title_like_any => "blog"}).all }
    
  end
  x.report("using normal finders") do 
    n.times { Blog.find(:all,:conditions => ["title like ?",'%blog%']) }
  end
  x.report("using normal finders") do 
    n.times { Blog.find(:all,:conditions => ["title like ?",'%blog%']).each {|a| a} }
  end
  x.report("using searchlogic finders") do 
    n.times { blogs = Blog.title_like_any('blog').each{|a| a}}
  end
end


# 8.3 Table of contents

contents = [ ["history", 4], ["math", 56], ["science", 107] ]

page_width = 30
puts "Table of contents".center(page_width)

contents.each do |chapter, page|
  puts (chapter.ljust(page_width - 8) + "page " + page.to_s.rjust(3))
  
end
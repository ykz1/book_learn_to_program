# 11.8 You downloaded a bunch of Vonnegut and want to do some move magic

Dir.chdir '/Users/ykz/documents/books/Vonnegut, Kurt'

book_names = Dir['/Users/ykz/documents/books/**/*.mobi']

puts book_names
print 'Moving files:'
book_names.each do |old_name|
  print '.'
  new_name = old_name.sub("/Users/ykz/Documents/Books/", "/Users/ykz/Documents/Books/Vonnegut, Kurt/")

  File.rename old_name, new_name
end
puts 'DONE'

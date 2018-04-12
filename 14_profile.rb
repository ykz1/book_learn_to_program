def profile(title, &block)
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{title}: #{duration} seconds"
end

profile "Add self 25000 times" do
  i = 1
  25000.times do
    i = i + i
  end
end

profile "Multiply by 2 25000 times" do
  i = 1
  25000.times do
    i = i * 2
  end
end


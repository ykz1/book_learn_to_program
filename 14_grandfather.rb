def chime(&block)
  count = Time.new.hour
  count.times { block.call }
  count
end

puts chime { puts 'DONG!' }


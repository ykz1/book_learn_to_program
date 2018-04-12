$indent = 0
def log(string, &block)
  puts "  " * $indent + "beginning #{string} block..."
  $indent += 1
  temp_value = block.call
  $indent -=1
  puts "  " * $indent + "...#{string} block finished, returning: " + temp_value.to_s
end

log "outer" do
  log "inner" do
    "i like thai food"
  end
  log "another inner" do
    5
  end
  false
end
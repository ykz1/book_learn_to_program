require 'yaml'

def yaml_save(object, filename)
  File.open(filename, 'w') do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load(filename)
  yaml_string = File.read(filename)
  YAML::load yaml_string
end

test_array = ['jenny', 'yikai', 'tikaibear', 'littlenose', 42, '42', false, ['yes', true, 42, '42']]

filename = 'test_yaml.txt'

yaml_save(test_array, filename)

read_array = yaml_load(filename)

puts read_array == test_array
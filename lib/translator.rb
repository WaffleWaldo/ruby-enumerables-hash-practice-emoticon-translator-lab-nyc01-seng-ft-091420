require 'yaml'
require 'pry'

def load_library(file_path)
  emoticons = YAML.load(File.read(file_path))
  
  emoticons.each do |key, value|
    emoticons[key] = {:japanese  => value[1], :english => value[0]}
  end
end

def get_japanese_emoticon(file_path, emoticon)
  hash = load_library(file_path)
  
  hash.each do |key, value|
    value.each do |inner_key, inner_value|
      if inner_value == emoticon
        puts hash[key][:english]
      end
    end
  end
  puts 'Sorry, that emoticon was not found'
end

def get_english_meaning(file_path, emoticon)
  hash = load_library(file_path)
end
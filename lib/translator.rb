require "yaml"
require "pry"

def load_library(file_path)
  emoticon_lib = YAML.load_file(file_path)
  new_hash = {}
  emoticon_lib.each do |emotion, symbol_array|
    new_hash[:get_meaning] ||= {}
    new_hash[:get_emoticon] ||= {}
    new_hash[:get_meaning][symbol_array.last] ||= emotion
    new_hash[:get_emoticon][symbol_array.first] ||= symbol_array.last
  end 
  new_hash
end

binding.pry

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
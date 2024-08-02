require "shale/schema"
require "json"
require "fileutils"

FileUtils.rm_rf("generated")
FileUtils.mkdir_p("generated/amp")

schema = File.read("schema.json")

Shale::Schema.from_json(
  [schema],
  root_name: "Car",
  namespace_mapping: { nil => "Amp" },
).each do |path_file, definition|
  filename = "generated/#{path_file}.rb"
  puts "writing #{filename}"
  # puts definition
  File.write(filename, definition)
end

puts "schema generated!"
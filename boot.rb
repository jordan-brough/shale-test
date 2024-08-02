$payload = File.read("payload.json")

require_relative "generated/amp/car"

puts <<~TXT

  Schema loaded!

  A sample payload is available in $payload:
  #$payload

  Try it out:
    car = Amp::Car.from_json($payload)
    car.color
    car.features
    car.options
    car.options.first.name

TXT

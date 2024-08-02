Usage:
```sh
$ ./test
```

Schema: [schema.json](schema.json)

Payload: [payload.json](payload.json)

Generated files:
- [car.rb](generated/amp/car.rb)
- [options.rb](generated/amp/options.rb)

Output:
```
$ ./test

writing generated/amp/options.rb
writing generated/amp/car.rb
schema generated!

Schema loaded!

A sample payload is available in $example_payload:
{
  "color": "red",
  "features": ["power steering", "automatic windows"],
  "options": [
    {"name": "leather seats", "value": "black", "cost": 2000},
    {"name": "stereo system", "value": "Bose", "cost": 1000}
  ]
}

Try it out:
  car = Amp::Car.from_json($example_payload)
  car.color
  car.features
  car.options
  car.options.first.name

001 > car = Amp::Car.from_json($example_payload)
#<Amp::Car:0x0000000105fd7c70...

002 > car.color
=> "red"

003 > car.features
=> ["power steering", "automatic windows"]

004 > car.options
=> [#<Amp::Options:0x0000000105fd7338 @cost=2000.0, @name="leather seats", @value="black">, #<Amp::Options:0x0000000105fd6d70 @cost=1000.0, @name="stereo system", @value="Bose">]

005 > car.options.first.name
=> "leather seats"
```

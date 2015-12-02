# London Transport
A TFL API consumer to turn the TFL API into useful, easy to parse data

## Installation
Add `gem 'london_transport'` to your gem file `bundle install`

Set the TFL app key and id with:

```ruby
LondonTransport.app_key = 'your-app-key'
LondonTransport.app_id = 'your-app-id'
```

## Usage
Find the nearest tube stations from a long/lat value:

```ruby
transport = LondonTransport::Tube.new(longitude: -0.1440493, latitude: 51.5152117)
```

`transport.stations` will then return an array of the nearest 3 tube stations and their distances (in metres) to this point, within 500m

```ruby
[
    [0] {
        "Oxford Circus Underground Station" => 147.70533261648208
    },
    [1] {
        "Bond Street Underground Station" => 403.48258984823457
    }
]
```

To set the size of the radius, just add radius to the initialisation attributes (radius is in metres):
`transport = LondonTransport::Tube.new(longitude: -0.1440493, latitude: 51.5152117, radius: 600)`

To return more than 3 stations, simply add the number you want as an argument on the stations method:
`transport.stations(20)`


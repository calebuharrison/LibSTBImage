# LibSTBImage

Crystal bindings for [stb_image](https://github.com/nothings/stb#stb_libs).

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  lib_stb_image:
    github: [calebuharrison]/lib_stb_image
```

Install your dependencies:
```sh
shards install
```

Run `make` from [YOUR PROJECT ROOT]/lib/lib_stb_image/src/lib_stb_image/ext/

Done!

## Usage

```crystal
require "lib_stb_image"

# image_data is a pointer to the raw bytes of the image - perfect for OpenGL!
image_data = LibSTBImage.load("path/to/image/file", out width, out height, out number_of_channels, LibSTBImage::Channels::Default)
puts "image width: #{width}"
puts "image height: #{height}"
puts "number of channels in the image: #{number_of_channels}"
```

## Contributing

1. Fork it ( https://github.com/calebuharrison/lib_stb_image/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [calebuharrison](https://github.com/calebuharrison) Caleb Uriah Harrison - creator, maintainer

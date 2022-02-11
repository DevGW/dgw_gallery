# DgwGallery
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'dgw_gallery'
```

And then execute:
```bash
$ rails app:dgw_gallery_engine:install:migrations  # Copy migrations from dgw_gallery_engine to application
$ rails db:migrate
$ bundle
```

Or install it yourself as:
```bash
$ gem install dgw_gallery
```

Point your browser to /gallery on your site

If you would like to modify the views or override the controller you can install either or both.
Execute:
```bash
$ rails app:dgw_gallery:install:views              # Install Gallery Views
$ rails app:dgw_gallery:install:controller         # Install Gallery Controller
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


# DgwGallery
This is a current work in progress so bear with us.) A simple gallery for ruby on rails sites that includes a layout for either a bootstrap carousel or responsive image page.

## Usage
Install the gem and migrations and point your browser to /gallery on your site.


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'dgw_gallery'
```

And then copy and install migrations from dgw_gallery_engine to application:
```bash
$ rails app:dgw_gallery_engine:install:migrations
$ rails db:migrate
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install dgw_gallery
```


If you would like to modify the views or override the controller you can install either or both.
Execute:
```bash
$ rails app:dgw_gallery:install:views           # Install Gallery Views
$ rails app:dgw_gallery:install:controller      # Install Gallery Controller
```

## Contributing
If you wish to contribute submit a pull request and detail your changes and comment them in the code as well.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


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
$ rails dgw_gallery:install:views           # Install Gallery Views
$ rails dgw_gallery:install:controller      # Install Gallery Controller
$ rails dgw_gallery:install:css             # Install Gallery CSS
```

If you are using turbolinks and experiencing issues with the carousel not starting on initial page load, try adding the following line at the end of your head section either for your main app or for that specific page.
```html
<head>
    ...
    ...
    <meta name="turbolinks-visit-control" content="reload">
</head>
```

## Usage
#### To embed the carousel on your page you will use code similar to this
```ruby
### in your action where you want to display gallery
### replace 'id' with the id of gallery you want
@gallery = Gallery.find(id)
```

```erb
<!-- Code in view.html.erb -->
<!-- Start Embeded Gallery Area -->
<% if !@gallery.gallery_images.blank? %>
    <div id="dgwGalleryIndicators" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
        <div class="carousel-inner">
            <% @gallery.gallery_images.each_with_index do |gi, idx| %>
                <div  data-bs-interval="5000" class="carousel-item <%= (idx == 0)? "active" : nil %>">
                    <figure>
                        <%= image_tag gi.image.variant(resize_to_fill: [900, 500]), class: "img-fluid border-radius-xl" %>
                    </figure>
                    <figcaption class="blockquote-footer text-center">
                        <%= gi.caption %>
                    </figcaption>
                </div>
            <% end %>
        </div>
    </div>
<% else %>
    <div class="col-12 text-center">
        There Are No Slides to Display. Please add some.
    </div>
<% end %>
<!-- End Embeded Gallery Area -->
```

## Contributing
If you wish to contribute submit a pull request and detail your changes and comment them in the code as well.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


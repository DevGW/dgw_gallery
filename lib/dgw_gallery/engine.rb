module DgwGallery
  class Engine < ::Rails::Engine
    initializer "dgw_gallery.assets.precompile" do |app|
        app.config.assets.precompile << "app/assets/config/dgw_gallery_manifest.js"
    end
  end
end

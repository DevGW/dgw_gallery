module DgwGallery
  class Engine < ::Rails::Engine
    initializer "blorgh.assets.precompile" do |app|
        app.config.assets.precompile += %w( no_image.png )
    end

  end
end

# desc "Explaining what the task does"
# task :dgw_gallery do
#   # Task goes here
# end

  namespace :dgw_gallery do
    desc "Install Gallery View Files"
    task :install_views do
        source = File.join(DgwGallery::Engine.root, "app", "views", "gallery", "index.html.erb")
        target = File.join(Rails.root, "app", "views", "gallery", "index.html.erb")
        FileUtils.cp_r source, target
    end
end
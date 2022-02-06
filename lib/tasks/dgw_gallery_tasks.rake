# desc "Explaining what the task does"
# task :dgw_gallery do
#   # Task goes here
# end

  namespace :dgw_gallery do
    desc "Install Gallery View Files"
    task :install_views do
        source = File.join(DgwGallery::Engine.root, "app", "views", "gallery")
        target = File.join(Rails.root, "app", "views", "gallery")
        FileUtils.copy_entry source, target
    end
end
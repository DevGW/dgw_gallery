# desc "Explaining what the task does"
# task :dgw_gallery do
#   # Task goes here
# end

namespace :dgw_gallery do
    desc "Install Gallery Views"

    task :install_views do
        source = File.join(DgwGallery::Engine.root, "app", "views", "gallery")
        target = File.join(Rails.root, "app", "views", "gallery")
        FileUtils.copy_entry source, target
    end


end

namespace :dgw_gallery do
    desc "Install Gallery Controller"

    task :install_controller do
        source = File.join(DgwGallery::Engine.root, "app", "controllers", "gallery_controller.rb")
        target = File.join(Rails.root, "app", "controllers", "gallery_controller.rb")
        FileUtils.cp_r source, target
    end
end
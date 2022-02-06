# desc "Explaining what the task does"
# task :dgw_gallery do
#   # Task goes here
# end

#   namespace :config do
  desc "Install Gallery View Files"
  task :install_views do
    source = File.join(Gem.loaded_specs["dgw_galler"].full_gem_path, "views", "gallery", "index.html.erb")
    target = File.join(Rails.root, "views", "gallery", "index.html.erb")
    FileUtils.cp_r source, target
  end
# end
Rails.application.routes.draw do
#   resources :gallery
    get 'gallery/new'
    get 'gallery', controller: 'gallery', action: 'index'
    post 'gallery', controller: 'gallery', action: 'create'
    get 'gallery/manage/:id', controller: 'gallery', action: 'manage'
    put "gallery/add_to_gallery/:id", controller: 'gallery', action: 'add_to_gallery'
    put "gallery/remove_from_gallery/:id", controller: 'gallery', action: 'remove_from_gallery'
    put "gallery/remove/:id", controller: 'gallery', action: 'remove_gallery'
    put "gallery/upload", controller: 'gallery', action: 'upload_to_gallery'
#   root to: 'gallery#index'
end

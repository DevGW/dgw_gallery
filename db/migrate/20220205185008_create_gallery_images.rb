class CreateGalleryImages < ActiveRecord::Migration[6.1]
  def change
    create_table :gallery_images do |t|
      t.references :gallery, null: false, foreign_key: true
      t.string :caption

      t.timestamps
    end
  end
end

class AddPhotoToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :photo, index: true, foreign_key: { to_table: :active_storage_attachments }
  end
end

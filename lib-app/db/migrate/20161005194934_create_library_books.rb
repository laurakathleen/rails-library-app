class CreateLibraryBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :library_books do |t|
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end

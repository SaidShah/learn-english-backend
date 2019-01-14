class CreateVocabularies < ActiveRecord::Migration[5.2]
  def change
    create_table :vocabularies do |t|
      t.string :category
      t.string :name
      t.string :image_url
      t.timestamps
    end
  end
end

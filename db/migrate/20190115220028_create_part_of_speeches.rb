class CreatePartOfSpeeches < ActiveRecord::Migration[5.2]
  def change
    create_table :part_of_speeches do |t|
      t.string :category
      t.string :definition
      t.string :examples
      t.string :sentences
      t.string :solutions
      t.string :words_to_use

      t.timestamps
    end
  end
end

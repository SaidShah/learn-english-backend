class CreateScrambles < ActiveRecord::Migration[5.2]
  def change
    create_table :scrambles do |t|
      t.string :category
      t.string :scrambled
      t.string :solution

      t.timestamps
    end
  end
end

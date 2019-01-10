class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :score
      t.integer :level_id

      t.timestamps
    end
  end
end

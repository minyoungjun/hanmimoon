class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|

      t.integer :problem_id
      t.integer :content_id
      t.boolean :selected

      t.timestamps
    end
  end
end

class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.integer :quiz_id
      t.integer :picture_id
      t.boolean :right
      t.integer :content_id, default: 1
      t.timestamps
    end
  end
end

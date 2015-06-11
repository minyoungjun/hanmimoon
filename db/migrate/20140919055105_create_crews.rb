class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
    	t.string :name
    	t.text :description
    	
    	# 크루명
    	# 크루설명
    	# 후원기관(수혜를 받는 기관)

      t.timestamps
    end
  end
end

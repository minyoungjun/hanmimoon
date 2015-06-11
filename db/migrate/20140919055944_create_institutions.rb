class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.integer :user_id
    	t.string :name
    	# 단체명
    	t.text :description
    	# 단체설명
    	t.string :phone

    	# 후원해주는 단체들(크루들) **
      #

      # 김재연 연습
      # 김재연 회원가입

      t.timestamps
    end
  end
end

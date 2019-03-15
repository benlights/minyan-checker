class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.integer :minyan_id, foreign_key: true
    	t.string :contact_method
    	t.string :contact_info, null: false
    	t.string :name
    	t.timestamps
    end
  end
end

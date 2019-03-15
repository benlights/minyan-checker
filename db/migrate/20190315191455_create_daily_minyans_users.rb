class CreateDailyMinyansUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_minyans_users do |t|
    	t.belongs_to :daily_minyan
    	t.belongs_to :user
    	t.string :link
    	t.boolean :joining, default: 0
    end
  end
end

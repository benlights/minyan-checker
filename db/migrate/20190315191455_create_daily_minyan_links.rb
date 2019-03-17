class CreateDailyMinyanLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_minyan_links do |t|
    	t.belongs_to :minyan
    	t.belongs_to :user
    	t.string :link
    	t.boolean :joining, default: 0
    	t.date :date
    end
  end
end

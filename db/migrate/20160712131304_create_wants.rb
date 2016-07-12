class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|
      t.integer      :rate
      t.text         :title
      t.text         :text
      t.timestamps
    end
  end
end

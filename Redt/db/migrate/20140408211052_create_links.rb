class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.string :link_url
    	t.references :user
      t.timestamps
    end
  end
end

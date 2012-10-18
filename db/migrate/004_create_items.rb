class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :name
    end
  end
end

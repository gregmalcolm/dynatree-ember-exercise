class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.boolean :folder
      t.boolean :hidden
      t.boolean :read_only

      t.timestamps
    end
  end
end

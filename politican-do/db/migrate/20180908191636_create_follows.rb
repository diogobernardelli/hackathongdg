class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.references :user, index: true
      t.references :deputy, index: true
      t.timestamps
    end
  end
end

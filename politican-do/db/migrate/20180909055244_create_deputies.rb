class CreateDeputies < ActiveRecord::Migration[5.2]
  def change
    create_table :deputies do |t|
      t.string :full_name
      t.string :uf
      t.string :political_party
      t.string :url_photo
      t.integer :camara_id, index: true      
      t.timestamps
    end
  end
end

class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.binary :data
      t.string :content_type

      t.timestamps
    end
  end
end

class CreateCounsellors < ActiveRecord::Migration[5.1]
  def change
    create_table :counsellors do |t|
      t.string :name
      t.string :profile_picture
      t.string :city
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :paradigm
      t.string :specialization
      t.float :cost

      t.timestamps
    end
  end
end

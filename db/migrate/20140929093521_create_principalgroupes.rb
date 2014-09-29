class CreatePrincipalgroupes < ActiveRecord::Migration
  def change
    create_table :principalgroupes do |t|
      t.string :nom

      t.timestamps
    end
  end
end

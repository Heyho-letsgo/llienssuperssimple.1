class CreateSousgroupes < ActiveRecord::Migration
  def change
    create_table :sousgroupes do |t|
      t.string :name
      t.references :principalgroupe, index: true

      t.timestamps
    end
  end
end

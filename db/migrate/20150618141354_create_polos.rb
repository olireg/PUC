class CreatePolos < ActiveRecord::Migration
  def change
    create_table :polos do |t|
      t.string :nome
      t.string :local

      t.timestamps
    end
  end
end

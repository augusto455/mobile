class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.string :c_mesa
      t.string :c_user
      t.string :n_user

      t.timestamps
    end
  end
end

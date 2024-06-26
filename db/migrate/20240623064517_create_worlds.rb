class CreateWorlds < ActiveRecord::Migration[7.1]
  def change
    create_table :worlds do |t|
      t.string :name
      t.integer :max_players

      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.integer :gold, default: 10
      t.string :race, default: "Pig", null: false
      t.boolean :first_sign_in, default: true

      t.timestamps
    end

    create_table :messages do |t|
      t.string :body

      t.timestamps
    end
    add_reference :messages, :user, foreign_key: true
  end
end

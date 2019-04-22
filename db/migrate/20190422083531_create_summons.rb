class CreateSummons < ActiveRecord::Migration[5.2]
  def change
    create_table :summons do |t|
      t.string :summontype
      t.string :rarity
      t.string :character
      t.string :weapon
      t.string :summon

      t.timestamps
    end
  end
end

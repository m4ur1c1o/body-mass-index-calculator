class CreateBodyMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :body_measures do |t|
      t.float :height
      t.float :weight
      t.float :bmi
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateSpaer < ActiveRecord::Migration[7.0]
  def change
    create_table :spaers do |t|
      t.references :reserve, foreign_key: true
      
      t.datetime :date1, default: -> { "now()" }, null: false
      t.datetime :date2
      t.datetime :date3
    end
  end
end

class CreateReserve < ActiveRecord::Migration[7.0]
  def change
    create_table :reserves ,comment: 'ご予約' do |t|
      t.string :name, null: false, comment: 'お名前'

      t.timestamps
    end
  end
end

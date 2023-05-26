class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts, comment: 'お問合せ' do |t|
      t.string :name, null: false ,comment: 'お名前'

      t.timestamps
    end

  end
end

class CreateSituacoes < ActiveRecord::Migration[7.0]
  def change
    create_table :situacoes do |t|
      t.string :nome, limit: 150

      t.timestamps
    end
  end
end

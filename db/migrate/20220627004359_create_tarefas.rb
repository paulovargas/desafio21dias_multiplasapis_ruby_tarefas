class CreateTarefas < ActiveRecord::Migration[7.0]
  def change
    create_table :tarefas do |t|
      t.integer :id_evento
      t.string :titulo, limit: 150
      t.text :descricao
      t.references :situacao, null: false, foreign_key: true
      t.datetime :data_criacao
      t.datetime :data_atualizacao

      t.timestamps
    end
  end
end

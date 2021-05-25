class CreatePontos < ActiveRecord::Migration[4.2]
  def change
    create_table :pontos do |t|
      t.integer :ano
      t.integer :mes
      t.string :entrada_manha, limit: 5, default: '09:00'
      t.string :saida_manha, limit: 5, default: '12:00'
      t.string :entrada_tarde, limit: 5, default: '13:00'
      t.string :saida_tarde, limit: 5, default: '18:00'

      t.timestamps
    end
  end
end

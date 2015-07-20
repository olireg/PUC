class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.string :codigocurso
      t.string :instituicao
      t.integer :codigolocal
      t.timestamps
    end
  end
end

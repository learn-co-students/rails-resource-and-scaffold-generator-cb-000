class CreateArticle2s < ActiveRecord::Migration
  def change
    create_table :article2s do |t|

      t.timestamps null: false
    end
  end
end

class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :court
      t.string :author
      t.string :defendant
      t.text :summary
      t.text :notification
      
      t.timestamps
    end
  end
end

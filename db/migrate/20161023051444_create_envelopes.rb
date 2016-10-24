class CreateEnvelopes < ActiveRecord::Migration
  def change
    create_table :envelopes do |t|
      t.string :subject
      t.text :body
      t.text :recipients

      t.timestamps null: false
    end
  end
end

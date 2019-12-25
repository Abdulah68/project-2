class AddPhoneToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars , :Phone, :string
    
  end
end

class AddFotoToOpcionais < ActiveRecord::Migration
   def self.up
    add_attachment :opcionais, :foto
  end

  def self.down
    remove_attachment :opcionais, :foto
  end
end

class AddFotoToVeiculos < ActiveRecord::Migration
  def self.up
    add_attachment :veiculos, :foto
  end

  def self.down
    remove_attachment :veiculos, :foto
  end
end

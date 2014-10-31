class Veiculo < ActiveRecord::Base
	has_many :alugueis 
	has_many :opcionais
	belongs_to :garagem
	belongs_to :categoria
	belongs_to :locadora

	validates_associated :garagem, :categoria, :locadora

	validates_presence_of :placa, :marca, :modelo, :ano, :cor, :valor_diaria, :garagem_id, :categoria_id, :locadora_id

	has_attached_file :foto, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/
end

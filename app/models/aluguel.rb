class Aluguel < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :veiculo
  validates_associated :cliente, :veiculo
  
  validates_presence_of :cliente_id, :veiculo_id, :dt_recebimento, :dt_devolucao
  validate :dt_recebimento_nao_pode_ser_menor_dt_dt_devolucao
  
  def dt_recebimento_nao_pode_ser_menor_dt_dt_devolucao
    if dt_recebimento > dt_devolucao
      errors.add(:dt_recebimento,"Data recebimento não pode ser anterior a devolução")
    end
  end

end

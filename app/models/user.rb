class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :role, inclusion: %w(admin cliente locadora)
  
  def self.role
    ["cliente", "locadora", "admin"]
  end

  def is_admin?
    return true if role == 'admin'
  end

  def is_cliente?
    return true if role == 'cliente'
  end

  def is_locadora?
    return true if role == 'locadora'
  end

end

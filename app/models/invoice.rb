class Invoice < ActiveRecord::Base
  attr_accessible :description, :number, :rand, :client_id, :user_id, :title

  validates :rand, :uniqueness => true
  belongs_to :user
  belongs_to :client

  def to_param
    "#{rand}".parameterize
  end

end
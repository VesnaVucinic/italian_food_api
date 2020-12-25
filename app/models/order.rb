class Order < ApplicationRecord
    belongs_to :user
    has_many :dishes

    validates_inclusion_of :status, :in => ['submitted', 'finished']

    
end

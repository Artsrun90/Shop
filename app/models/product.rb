class Product < ApplicationRecord
    belongs_to :category
    belongs_to :supplier
    has_many :order_detail
end

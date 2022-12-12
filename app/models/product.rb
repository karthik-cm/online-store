class Product < ApplicationRecord
    has_many(:lineitems)
    before_destroy :make_sure_this_product_is_not_a_lineitems

    validates(:name, :description, :image, presence: true)
    validates(:price, numericality: {greater_than_or_equal_to: 0.01})
    validates(:name, uniqueness: true)
    validates(:image, format: {with: %r{(gif|jpg|jpeg|png)\Z}i, message: 'Image must be gif or jpg/jpeg or png type'})

    def make_sure_this_product_is_not_a_lineitems
        if self.lineitems.empty?
            return true
        else
            return false
        end
    end
end

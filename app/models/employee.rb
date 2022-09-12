class Employee < ActiveRecord::Base
    has_many :roles
    has_many :products, through: :roles
    
end
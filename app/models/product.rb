class Product < ActiveRecord::Base
    has_many :roles
    has_many :employees, through: :roles
end
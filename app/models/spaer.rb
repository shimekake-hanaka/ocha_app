class Spaer < ApplicationRecord
has_one :reserve
end

class Reserve 
belongs_to :spaer
end
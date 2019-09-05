class Favolite < ApplicationRecord
  belongs_to :user
  belongs_to :favo, class_name: 'User'
end

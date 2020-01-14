class Team < ApplicationRecord
  has_many :tournaments, dependent: :destroy
end

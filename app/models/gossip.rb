class Gossip < ApplicationRecord
    belongs_to :user
    has_many :gossip_tags
    has_many :tags
    has_many :comments
    has_many :likes
end

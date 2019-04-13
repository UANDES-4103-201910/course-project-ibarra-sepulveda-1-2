class PostVotedByUser < ApplicationRecord
  has_many :vote_post
  has_many :user
end

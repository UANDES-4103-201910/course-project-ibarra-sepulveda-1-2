class PostVotedByUser < ApplicationRecord
  belongs_to :vote_post
  belongs_to :user
end

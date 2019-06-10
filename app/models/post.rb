class Post < ApplicationRecord
	acts_as_votable
	mount_uploader :file, FileUploader
  	belongs_to :user
end

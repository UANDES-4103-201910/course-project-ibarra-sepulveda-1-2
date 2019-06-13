class User < ApplicationRecord
	acts_as_voter
	geocoded_by :address
	after_validation :geocode, if: ->(obj){obj.address.present? and obj.address_changed?}
	mount_uploader :picture, PictureUploader
  	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]



	def self.from_omniauth(access_token)
		data = access_token.info
		user = User.where(email: data['email']).first

		# Uncomment the section below if you want users to be created if they don't exist
		 unless user
		     user = User.create(first_name: data['name'],
		        email: data['email'],
		        password: Devise.friendly_token[0,20]
		     )
		 end
		user
	end
end

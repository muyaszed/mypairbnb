class List < ActiveRecord::Base
	belongs_to :user
	has_many :reservations, :dependent => :destroy
	mount_uploaders :images, ImageUploader
end

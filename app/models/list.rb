

class List < ActiveRecord::Base

	include PgSearch
	multisearchable :against => [:city, :start_avail, :end_avail, :description]

	belongs_to :user
	has_many :reservations, :dependent => :destroy
	mount_uploaders :images, ImageUploader

	

  


end



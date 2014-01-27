class Post < ActiveRecord::Base
  attr_accessible :format, :length, :price, :text, :title, :video, :type, :image

	has_attached_file :image, :styles => { :large => ["600x320#", :png], :medium => ["300x160#", :png], :thumb => ["100x100#", :png] }, :default_url => "/images/:style/missing.png"
	validates :title, presence: true
	validates_uniqueness_of :title

	belongs_to :user
end

class Movie < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :reviews

  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  :default_url => "#{Rails.root}/app/assets/images/missing.jpg",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/environments/production.rb",
    :path => "/movie_images/:style/:id/:filename"
end

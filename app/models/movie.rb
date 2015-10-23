class Movie < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :reviews

  has_attached_file :image, styles: { medium: "400x600#" },
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ ,

    storage: :s3,
    s3_credentials: "#{Rails.root}/config/s3.yml",
    path: ":attachment/:id/:style.:extension"
    bucket: "movie-review"
end

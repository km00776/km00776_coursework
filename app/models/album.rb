class Album < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, styles: { medium: "400x600#>"}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end

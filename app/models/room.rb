class Room < ActiveRecord::Base
  validates :user_id, presence: true
  validates :image,   presence: true
  validates :description, length: { maximum: 140 }
  validates :detail01,    length: { maximum: 40 }
  validates :detail02,    length: { maximum: 40 }
  validates :detail03,    length: { maximum: 40 }

  belongs_to :user

  mount_uploader :image, RoomimageUploader

end

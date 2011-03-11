class Project < ActiveRecord::Base
  has_many :tickets
  has_many :permissions, :as => :resource
  validates :name, presence:true

  scope :readable_by, lambda { |user|
    joins(:permissions).where(:permissions => {:action => "view", :user_id => user})
  }
end

class Project < ActiveRecord::Base
  has_many :tickets
  has_many :permissions, :as => :resource
  validates :name, presence:true

  scope :readable_by, lambda { |user|
    joins(:permissions).where(:permissions => {:action => "view", :user_id => user})
  }

  def self.for(user)
    user.admin? ? Project : Project.readable_by(user)
  end
end

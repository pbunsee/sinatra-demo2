class User < ActiveRecord::Base
  belongs_to :group
end


class Group < ActiveRecord::Base
  has_many :users
  has_one :appointment
end

class Appointment < ActiveRecord::Base
  belongs_to :group
end

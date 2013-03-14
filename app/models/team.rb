class Team < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end

class Job < ApplicationRecord

  belongs_to :employer

  mount_uploader :logo, LogoUploader
  
end

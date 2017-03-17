class Job < ApplicationRecord

  belongs_to :company

  mount_uploader :logo, LogoUploader
end

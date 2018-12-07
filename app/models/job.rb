class Job < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]
end

class UserVisa < ApplicationRecord
  belongs_to :user
  belongs_to :visa
end

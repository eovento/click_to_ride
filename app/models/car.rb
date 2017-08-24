class Car < ApplicationRecord
  has_attachments :pictures
  belongs_to :user
end

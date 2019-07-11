class DirectMessage < ApplicationRecord
  belongs_to :sender
  belongs_to :reciever
end

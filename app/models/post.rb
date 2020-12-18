class Post < ApplicationRecord
    validates :content, :title, presence: true
    validates :title, length: {maximum: 30}
    validates :title, length: {minimum: 2}
    validates :title, uniqueness: true

    belongs_to :author
end

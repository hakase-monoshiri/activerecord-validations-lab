class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates_inclusion_of :category, in: ["Fiction", "Non-Fiction"]
    validates_with TitleValidator
end

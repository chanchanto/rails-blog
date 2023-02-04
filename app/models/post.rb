class Post < ApplicationRecord
    belongs_to :user
    paginates_per 6
    has_rich_text :content
end

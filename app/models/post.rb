class Post < ApplicationRecord
    belongs_to :user
    paginates_per 6
    has_rich_text :content
    has_one :action_text_rich_text, class_name: 'ActionText::RichText', as: :record
end

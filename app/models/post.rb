class Post < ApplicationRecord
    validates :title, :image_url, :content, presence: true


    def replace_word
        self.content = self.content.gsub 'spoiler', 'nombre'  
end

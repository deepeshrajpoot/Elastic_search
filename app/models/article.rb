class Article < ApplicationRecord
   searchkick word_start: [:title, :text]
end

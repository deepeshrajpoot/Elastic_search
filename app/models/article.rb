class Article < ApplicationRecord
   searchkick word_start: [:title, :text]

   def search_data
    {
      title: title,
      text: text,
    }
  end

end

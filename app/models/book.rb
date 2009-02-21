class Book < ActiveRecord::Base
  named_scope :all_by_title, :order => 'title'
end

class Upvote < ActiveRecord::Base
 belongs_to :type,polymorphic: true

end

class Movie < ActiveRecord::Base
	
	validates :title, presence: true
	validates :title, length: { minimum: 2 }

	#define on whole class, not instance of the class (self.)
	def self.search(query)
		if query
  			#search for a partial match.  pay attention to the end of this statement.
  			Movie.where('title LIKE :query', query: "%#{query}%")
  		else
  			Movie.all
  		end
	end	

end

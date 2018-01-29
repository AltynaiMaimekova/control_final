module ApplicationHelper
	def average_score(place)
		if place.reviews.length != 0
			mean_score = ((place.reviews.average(:food) + place.reviews.average(:service) + place.reviews.average(:interior))/3).round(1)
		else
			mean_score = 0
		end
	end
end

module ApplicationHelper
	def average_score(place)
		mean_score = ((place.reviews.average(:food) + place.reviews.average(:service) + place.reviews.average(:interior))/3).round(1)
	end
end

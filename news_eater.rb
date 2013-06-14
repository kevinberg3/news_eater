require 'rubygems'
require 'nokogiri'
require 'open-uri'



	url = "http://pitchfork.com/"
	data = Nokogiri::HTML(open(url))


	
	review = data.at_css(".review-detail")

	review_text = data.at_css(".content-container p")

	band_name = data.at_css(".review-detail-info h1")

	album_name =  data.at_css(".review-detail-info h2")

puts band_name.text.strip
puts album_name.text
puts review_text.text

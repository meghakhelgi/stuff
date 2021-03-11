require 'Nokogiri'
require 'HTTParty'

class Scraper
    attr_accessor :parse_page
    def initialize
        doc = HTTParty.get("https://cse.osu.edu/course-coordinators")
        @parse_page ||= Nokogiri::HTML(doc)
    end
end

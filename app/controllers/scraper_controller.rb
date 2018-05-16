require_relative '../models/scraper'

class ScraperController < ApplicationController
  def results
    response = HTTParty.get('http://www.subsplash.com/careers/')
    html_doc = Nokogiri::HTML(response)
    li_tags = html_doc.css('li')
    binding.pry
    # @jobs = html_doc.css("BambooHR-ATS-Department-Header")
  end
end

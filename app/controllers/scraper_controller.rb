require_relative '../models/scraper'

class ScraperController < ApplicationController
  def results
    response = HTTParty.get('http://www.subsplash.com/careers/')
    html_doc = Nokogiri::HTML(response)
    testing = html_doc.css("div.sqs-block-content")
    output = []
    testing.each do |one|
      output.push(one.text)
    end
    @jobs = output
    # li_tags = html_doc.css("li.BambooHR-ATS-Department-Header")
    binding.pry
    # @jobs = html_doc.css("BambooHR-ATS-Department-Header")
  end
end

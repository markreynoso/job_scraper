class ScrapeJobs
  def results
    response = HTTParty.get('https://spu.interviewexchange.com/static/clients/410SPM1/index.jsp;jsessionid=6D460907FDB75F679B26E337DAFDAF84')
    puts response
    return response
  end
end
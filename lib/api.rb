
class API
  
  def get_api
 
  response = HTTParty.get "https://api.pexels.com/v1/curated?per_page=50",{headers:{"Authorization":"Bearer #{ENV['API_KEY']}"}}
  
    response["photos"].each do |photographer_hash|
      
      Photographer.new(photographer_hash["id"],photographer_hash["photographer"],photographer_hash["photographer_url"],photographer_hash["src"]["original"])
       binding.pry
    end

  end 

end


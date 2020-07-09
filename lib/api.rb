
class API
  
  def get_api
 
  response = HTTParty.get "https://api.pexels.com/v1/curated?per_page=20",{headers:{"Authorization":"Bearer #{ENV['API_KEY']}"}}
  
    photos_array = response["photos"]
    
    photos_array.each do |photographer_hash|
     
      photographer_hash
      info_hash = {
        pic_taker: photographer_hash["photographer"],
        pic_taker_url: photographer_hash["photographer_url"],
        orig_url: photographer_hash["src"]["original"]
      }  
      Photographer.new(info_hash)
    end

  end 

end


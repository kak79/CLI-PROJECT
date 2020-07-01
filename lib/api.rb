class CatFactAPI
    BASE_URL = "https://randomfox.ca/"
  
    def get_cat_facts
      cat_facts = HTTParty.get(BASE_URL + "/images")
    end
end

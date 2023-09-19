class PagesController < ApplicationController
    def index
        
    end

    def about

    end

    def blog
        
    end

    def contact
        
    end

    def features
        
    end

    def pricing
        
    end

    def show
        url = URI("https://api.the-odds-api.com/v4/sports/soccer/odds/?apiKey=c71272ed262812c7509e26ec14e578eb&regions=eu")
        # /v4/sports/{sport}/odds/?apiKey={apiKey}&regions={regions}&markets={markets}
        # Create an HTTP object
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        # Create a GET request
        request = Net::HTTP::Get.new(url)

        # Send the request and capture the response
        response = http.request(request)

        # Check if the response is successful (HTTP status 200)
        if response.code == '200'
        # Parse the JSON response
            @data = JSON.parse(response.body)
        else
        # Handle the error if the response is not successful
            flash[:error] = "API request failed with status #{response.code}"
            @data = nil
        end
    end
end

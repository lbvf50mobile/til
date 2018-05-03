# HTTP request to openweather using APPID (https://github.com/cmfcmf/OpenWeatherMap-PHP-Api/issues/46)
if ENV['OPENWEATHER']
    p "OPENWEATHER api key exist: #{ENV['OPENWEATHER']}"
    # http://api.openweathermap.org/data/2.5/weather?q=Berlin&APPID=
        require "net/http"
        require "uri"
        uri = URI.parse("http://api.openweathermap.org/data/2.5/weather?q=Berlin&APPID=#{ENV['OPENWEATHER']}")

        # Shortcut
        response = Net::HTTP.get_response(uri)

        # Will print response.body
        Net::HTTP.get_print(uri)

        # Full
        http = Net::HTTP.new(uri.host, uri.port)
        response = http.request(Net::HTTP::Get.new(uri.request_uri))
else
    p "No it dose not exist, create variable for OPENWEATHER='xxxx'; eport OPENWEATHER."
end

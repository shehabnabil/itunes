require 'net/http'
require 'json'

require_relative './itunes/version'

module Itunes
	class Client
		def search term
	  		uri = URI("http://itunes.apple.com/search?term=#{term}&entity=song")
	  		result = Net::HTTP.get(uri) # => String
			parseWrapper(result)['results']	
		end

		def parseWrapper results
			JSON.parse(results)

		end
	end
end

require 'open-uri'

class ScrapCryptos
	def initialize
		@trading_page_url = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	end

	def get_crypto_prices(trading_page_url=@trading_page_url)
		list_of_share_prices = []	
		trading_page_url.xpath("//tr/td/a[@class='price']").each do |node|
			share_price = node["data-usd"]
		
			if share_price == nil
			else
				list_of_share_prices.push(share_price)
			end
		end
		return list_of_share_prices
	end

	def get_crypto_names(trading_page_url=@trading_page_url)
		list_of_currencies = []
		trading_page_url.xpath('//a[@class="currency-name-container"]').each do |node|
			list_of_currencies.push(node.text)
		end
		return list_of_currencies
	end

	def get_cryptos

		list_of_currencies = get_crypto_names
		list_of_share_prices = get_crypto_prices

		hash_of_currencies_share_prices = Hash.new

		compteur = 0
		while compteur < list_of_currencies.length
			hash_of_currencies_share_prices[list_of_currencies[compteur]] = list_of_share_prices[compteur]
			compteur += 1
		end
		return hash_of_currencies_share_prices
	end
end
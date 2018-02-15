class CryptosController < ApplicationController
  def home
    @crypto_names = ScrapCryptos.new.get_crypto_names
  	
  end

  def search
  	@crypto_name = crypto_params[:name]
	  @cryptos = ScrapCryptos.new.get_cryptos
  	


  end

  private #on ne récupère de la view que les données qui nous intéressent (anonyme_user et content) - placé ici dans le script par convention
    def crypto_params
      params.permit(:name)
    end
end

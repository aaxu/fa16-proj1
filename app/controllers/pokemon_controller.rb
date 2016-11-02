class PokemonController < ApplicationController
	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.new
		@pokemon.name = poke_name[:name]
		@pokemon.level = 1
		@pokemon.health = 100
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to trainer_path(@pokemon.trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pokemons_new_path
		end
	end

	def poke_name
		params.require(:pokemon).permit(:name)
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to '/'
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health = pokemon.health - 10
		pokemon.save
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(pokemon.trainer)
	end
end

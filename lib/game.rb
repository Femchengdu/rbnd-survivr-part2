class Game
	attr_reader :tribes
	def initialize *tribe
		@tribes = ([] << tribe).flatten!
	end

	def add_tribe new_tribe
		@tribes << new_tribe
	end

	def immunity_challenge
		tribes.shuffle.first
	end

	def clear_tribes
		@tribes = []
	end

	def merge combined_tribe	
		member_array = tribes.map(&:members).flatten
		merged_tribe = Tribe.new({name: combined_tribe, members: member_array})
		clear_tribes
		add_tribe merged_tribe
		merged_tribe
	end

	def individual_immunity_challenge
		tribes[0].members.sample
	end
end
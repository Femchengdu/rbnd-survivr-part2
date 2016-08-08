class Game
	attr_reader :tribes
	def initialize *tribe
		@tribes = tribe
	end

	def add_tribe new_tribe
		@tribes << new_tribe
	end

	def immunity_challenge
		@tribes.first
	end

	def clear_tribes
		@tribes = []
	end

	def merge combined_tribe
		member_array = []
		tribes.each do |tribe_members|
			member_array.concat(tribe_members.members)
		end
		Tribe.new({name: combined_tribe, members: member_array})
	end

	def individual_immunity_challenge
		immunity_challenge.members.first
	end
	
end
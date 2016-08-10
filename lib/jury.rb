class Jury
	def initialize 
		@jury = []
	end

	def add_member j_member
		@jury << j_member
	end

	def members
		@jury
	end

	def members= j_members
		@jury = j_members
	end

	def voting votes
		votes_arr = []
		members.each do
			vote = votes[rand(2)]
			colors = [:yellow, :blue]
			votes_arr << vote
			puts vote
		end
		return votes_arr
	end

	def cast_votes finalist_array
		votes_hash = Hash.new 0
		votes_res = voting finalist_array
		votes_res.each do |voto|
			votes_hash[voto] += 1
		end
		votes_hash
	end

	def report_votes results_hash
		results_hash.each do |key,value|
			puts "#{key}'s socore is #{value}".pink
		end
	end

	def announce_winner results_hash
		winner = results_hash.select{|key, value| value > 3}
		puts winner.keys.first.name.red
	end
end
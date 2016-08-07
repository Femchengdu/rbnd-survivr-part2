class Tribe
	attr_reader :name, :members
	def initialize(opt = {})
		@name = opt[:name]
		@members = opt[:members]
		puts self
	end

	def to_s
		@name
	end

	def tribal_council immune: immune_member
		@immune = immune
		evict_members = members.reject {|n| n == @immune}
		rnd = rand(evict_members.length)
		evict_members[rnd]
	end
end
class Tribe
	attr_reader :name, :members
	def initialize(opt = {})
		@name = opt[:name]
		@members = opt[:members]
		puts "#{self}".blue
	end

	def to_s
		@name
	end

	def tribal_council immune: immune_member
		@immune = immune
		evictable_members = members.reject {|n| n == @immune}
		rnd = rand(evictable_members.length)
		to_delete = evictable_members[rnd]
		members.delete(to_delete)
	end
end
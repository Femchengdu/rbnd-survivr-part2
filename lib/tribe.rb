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
		evictable_members = members.reject {|member| member == @immune}
		to_delete = evictable_members.sample
		members.delete(to_delete)
	end
end
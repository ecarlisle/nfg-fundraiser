class Fundraiser < ActiveRecord::Base

	def full_name
		[first_name, last_name].join(' ')
	end

	def percent_to_goal
		(current_amount/goal_amount).round()
	end

	def image_file
		("/assets/" + [first_name, last_name].join('_') + ".jpg").downcase
	end
end

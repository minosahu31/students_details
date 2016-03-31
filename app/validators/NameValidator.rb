class NameValidator < ActiveModel::Validator
	def validate_each(record, attribute, value)
		unless record.name.start_with? 'x'
			record.error[attribute] << 'Need a name starting with x please!'
		end	
	end
end
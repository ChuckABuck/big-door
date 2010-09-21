module BigDoor
	class NamedAward
		include ClassMethods

		def initialize(params)
			params.each_pair do |key, val|
				self.class.class_eval do
					next if self.instance_methods.include?(key)
					self.instance_eval do
						attr_accessor key
					end
				end
				instance_variable_set("@#{key}", val)
			end
		end

		def self.all
			perform_request('get', 'named_award')
		end

		def self.find(params={})
			results = perform_request('get', 'named_award', params)
		end
	end
end
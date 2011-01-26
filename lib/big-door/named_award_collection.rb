module BigDoor
	class NamedAwardCollection
		include ClassMethods

		def initialize(params)
			params.each_pair do |key, val|
				self.class.class_eval do
					next if self.instance_methods.include?(key) and key.to_s != 'id'
					self.instance_eval do
						attr_accessor key
					end
				end
				instance_variable_set("@#{key}", val)
			end

			self.named_awards = parse_out_classes(params['named_awards'])
		end

		def self.all
			perform_request('get', 'named_award_collection')
		end

		def self.find(params={})
			results = perform_request('get', 'named_award_collection', params)
		end
	end
end
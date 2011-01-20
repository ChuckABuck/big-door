module BigDoor
	class NamedTransactionGroup
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
			
			self.named_transactions = parse_out_classes(params['named_transactions'])
		end
		
		def self.all
			perform_request('get', 'named_transaction_group')
		end
		
		def self.find(title)
      @cache ||= Hash.new do |hash, key|
        groups = NamedTransactionGroup.all
        hash[key] = groups.find_all { |g| g.end_user_title == key }.first
      end
      @cache[title]
		end
	end
end

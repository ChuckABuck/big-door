# [{"sent_good_summaries"=>[], "level_summaries"=>[], "read_only"=>0, "received_good_summaries"=>[], "guid"=>"a24ff58ca0d711df966120ad2f73afad", "created_timestamp"=>1281043384, "modified_timestamp"=>1281043384, "end_user_login"=>"testers", "award_summaries"=>[], "currency_balances"=>[], "resource_name"=>"end_user"}, {}]

module BigDoor
	class User
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
			perform_request('get', 'end_user')
		end
		
		def self.find(login)
			perform_request('get', 'end_user', {:id => login})
		end
		
		def transaction
			perform_request('get', "end_user/#{self.end_user_login}/transaction")
		end
		
		def add_points(currency, points)
			debugger
			perform_request('post', "end_user/#{self.end_user_login}/transaction", {:id => currency.id, :amount => points})
		end
		
		def get_currency_balance(currency=nil)
			params = {}
			params[:id] = currency.id.to_s unless currency.nil?
			perform_request('get', "end_user/#{self.end_user_login}/currency_balance", params)
		end
	end
end

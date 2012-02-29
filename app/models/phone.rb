class Phone < ActiveRecord::Base
	has_one :signout_log, :as => :device
end

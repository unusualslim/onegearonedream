class Quote < ActiveRecord::Base
	validates :quote, presence: true,
			length: { minimum: 1}
end

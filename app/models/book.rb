class Book < ActiveRecord::Base
	scope :recent, -> { where('finished_on > ?', 2.days.ago) }
	scope :finished, -> { where.not(finished_on: nil) }
	def finished?
		finished_on.present?
	end
end

module PontosHelper

end

class String

	def diff(minutes)
		min = self.slice(3,5).to_i
		hor = self.slice(0,2).to_i

		calc_min = min + minutes

		if calc_min < 0
			calc_min += 60
			hor -= 1
		elsif calc_min > 59
			calc_min -= 60
			hor += 1
		end		

		"%02d:%02d" % [hor, calc_min]
	end

	alias_method :'>>', :diff

end

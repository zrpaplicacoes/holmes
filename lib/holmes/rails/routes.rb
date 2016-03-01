module Holmes
	module RouteSetup
	end
end

module ActionDispatch::Routing
	class Mapper
		prepend Holmes::RouteSetup

		def holmes_routes
			match '*unmatched_route', :to => 'holmes#raise_not_found!', via: [:get, :post]
		end

	end
end
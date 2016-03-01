module ActionDispatch::Routing
	class Mapper

		def holmes_routes
			match '*unmatched_route', :to => 'holmes#raise_not_found!', via: [:get, :post]
		end

	end
end
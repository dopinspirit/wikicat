class ApplicationController < ActionController::API

	include ActionController::Serialization
	include ActionController::RespondWith

	respond_to :json
end

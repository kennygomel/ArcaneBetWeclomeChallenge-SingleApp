# frozen_string_literal: true

class RefreshController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authorize_refresh_by_access_request!

  def create
    session = JWTSessions::Session.new(payload: claimless_payload,
                                       refresh_by_access_allowed: true)
    tokens = session.refresh_by_access_payload do
      raise JWTSessions::Errors::Unauthorized, 'Malicious activity detected'
    end
    response.set_cookie(JWTSessions.access_cookie,
                        value: tokens[:access],
                        secure: Rails.env.production?)

    render json: { csrf: tokens[:csrf] }
  end
end

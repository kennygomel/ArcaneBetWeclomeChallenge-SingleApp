# frozen_string_literal: true

class SignupController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    user = User.new(user_params)
    if user.save
      create_session(user)
    else
      render json: {
        error: user.errors.full_messages.join(' ')
      }, status: :unprocessable_entity
    end
  end

  private

  def create_session(user)
    session = JWTSessions::Session.new(
      payload: { user_id: user.id },
      refresh_by_access_allowed: true
    )
    tokens = session.login
    authorize(tokens)
  end

  def authorize(tokens)
    response.set_cookie(
      JWTSessions.access_cookie,
      value: tokens[:access],
      expires: 1.hour.from_now,
      secure: Rails.env.production?
    )
    render json: { csrf: tokens[:csrf] }
  end

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end

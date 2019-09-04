class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]
  after_create :UserMailer.welcome_email(self).deliver_now
  def index
  end

  def secret
  end
end

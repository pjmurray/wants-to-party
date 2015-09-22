class PartiesController < ApplicationController
  def show
    if request.subdomain.present?
      render 'show'
    else
      render 'index'
  end
end
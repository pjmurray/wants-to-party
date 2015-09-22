class PartiesController < ApplicationController
  def show
    if request.subdomain.present?
      # @party_person = PartyPerson.find_by_subdomain()
      @party_person = OpenStruct.new(name: request.subdomain)
      render 'show'
    else
      render 'index'
    end
  end
end
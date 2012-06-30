class CurrentAbilityController < ApplicationController

  def show
    render :json => current_ability.to_json
  end

end

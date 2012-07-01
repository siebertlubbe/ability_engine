require 'spec_helper'

describe CurrentAbilityController do

  describe "GET 'show'" do
    it "return the current_ability class in json format" do
      rules_json = {:rules => ['rule1', 'rule2']}.to_json
      controller.should_receive(:current_ability).and_return(mock(:current_ability, :to_json => rules_json))
      get 'show', {:use_route => :ability_engine_engine}
      response.body.should == rules_json
      response.should be_success
    end
  end

end


require 'spec_helper'

describe MansionsController do
  describe '#index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end
  end


end

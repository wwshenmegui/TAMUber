require 'rails_helper'

RSpec.describe OndutiesController, type: :controller do

  it "#index" do
    login_with ( :user )
    get :index
    expect(response).to render_template(:index)
  end

  it "#new" do
    login_with ( :user )
    get :new
    expect(response).to have_http_status(200)
    expect(response).to render_template(:new)
  end

end
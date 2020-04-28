# frozen_string_literal: true

require "admin/actions/sounds/create"

require "capybara"
require "rack/test"

RSpec.describe Admin::Actions::Sounds::Create do
  include Rack::Test::Methods

  subject(:action) { described_class.new }
  alias_method :app, :action

  def request(params)
    put "/admin/sounds", params
  end

  context "Full integration" do
    it "Redirects to admin when requested with valid params" do
      request sound: {title: "Hello"}

      expect(last_response).to be_redirect
      expect(last_response.headers["location"]).to eq "/admin"
    end

    it "Re-renders the form when requested with invalid params" do
      request sound: {title: "x"}

      expect(last_response).to be_successful
      expect(response_body).to have_content "size cannot be less than 2"
      expect(response_body).to have_field "sound[title]", with: "x"
    end
  end

  private

  def response_body
    Capybara.string(last_response.body)
  end
end

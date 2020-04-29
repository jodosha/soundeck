# frozen_string_literal: true

require "admin/actions/sounds/create"
require "admin/sounds/commands/create"
require "admin/views/sounds/new"

require "dry/monads"
require "capybara"
require "rack/test"

RSpec.describe Admin::Actions::Sounds::Create do
  context "Isolated unit tests" do
    subject(:action) {
      described_class.new(
        create_sound: create_sound,
        view: view,
      )
    }

    let(:create_sound) { instance_double(Admin::Sounds::Commands::Create) }
    let(:view) { instance_double(Admin::Views::Sounds::New) }

    context "create command succeeds" do
      before do
        allow(create_sound).to receive(:call).with(title: "Hello") { Dry::Monads::Success(double(:sound)) }
      end

      it "redirects to /admin" do
        response = action.(request_env("PUT", "/admin/sounds", sound: {title: "Hello"}))

        expect(create_sound).to have_received(:call).with title: "Hello"

        expect(response).to be_redirect
        expect(response.headers["location"]).to eq "/admin"
      end
    end

    context "create command fails" do
      let(:validation) { double(:validation) }

      before do
        allow(create_sound).to receive(:call).with(title: "Hello") { Dry::Monads::Failure[:validation, validation] }
        allow(view).to receive(:call).with(validation: validation) { "new sound view" }
      end

      it "renders the view with the validation failure provided" do
        response = action.(request_env("PUT", "/admin/sounds", sound: {title: "Hello"}))

        expect(create_sound).to have_received(:call).with title: "Hello"
        expect(view).to have_received(:call).with(validation: validation)

        expect(response).to be_successful
        expect(response.body).to eq ["new sound view"]
      end
    end

    private

    def request_env(verb, uri, params = {}, env = {})
      session = Rack::Test::Session.new(action)
      session.send(
        :env_for,
        session.send(:parse_uri, uri, env),
        env.merge(method: verb.to_s.upcase, params: params)
      )
    end
  end

  context "Full integration tests" do
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
end

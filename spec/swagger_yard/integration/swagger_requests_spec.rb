require 'spec_helper'

describe SwaggerYard::Rails::SwaggerController, type: :request do
  let(:api_json) {JSON.parse(File.read(File.expand_path('../../../fixtures/api.json', __FILE__)))}

  it 'returns api json' do
    get '/swagger/api'
    expect(response.status).to eq(200)
    expect(JSON.parse(response.body)).to eq(api_json)
  end
end

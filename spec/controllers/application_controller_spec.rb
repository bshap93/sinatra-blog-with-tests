describe ApplicationController do
  it 'responds with a 200 on /' do
    get '/'
    expect(last_response).to be_successful
  end
end


RSpec.describe TodosController, type: :controller do

  describe 'GET index' do
    it 'should render TodoSerializer' do
      get '/todos'
      assert_serializer TodoSerializer
    end
  end

end

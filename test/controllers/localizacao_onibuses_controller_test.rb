require "test_helper"

class LocalizacaoOnibusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @localizacao_onibus = localizacao_onibuses(:one)
  end

  test "should get index" do
    get localizacao_onibuses_url
    assert_response :success
  end

  test "should get new" do
    get new_localizacao_onibus_url
    assert_response :success
  end

  test "should create localizacao_onibus" do
    assert_difference('LocalizacaoOnibus.count') do
      post localizacao_onibuses_url, params: { localizacao_onibus: { Data_2: @localizacao_onibus.Data_2, Hora: @localizacao_onibus.Hora, Localizacao: @localizacao_onibus.Localizacao, Onibus_Id_Onibus: @localizacao_onibus.Onibus_Id_Onibus, Usuario_Id: @localizacao_onibus.Usuario_Id } }
    end

    assert_redirected_to localizacao_onibus_url(LocalizacaoOnibus.last)
  end

  test "should show localizacao_onibus" do
    get localizacao_onibus_url(@localizacao_onibus)
    assert_response :success
  end

  test "should get edit" do
    get edit_localizacao_onibus_url(@localizacao_onibus)
    assert_response :success
  end

  test "should update localizacao_onibus" do
    patch localizacao_onibus_url(@localizacao_onibus), params: { localizacao_onibus: { Data_2: @localizacao_onibus.Data_2, Hora: @localizacao_onibus.Hora, Localizacao: @localizacao_onibus.Localizacao, Onibus_Id_Onibus: @localizacao_onibus.Onibus_Id_Onibus, Usuario_Id: @localizacao_onibus.Usuario_Id } }
    assert_redirected_to localizacao_onibus_url(@localizacao_onibus)
  end

  test "should destroy localizacao_onibus" do
    assert_difference('LocalizacaoOnibus.count', -1) do
      delete localizacao_onibus_url(@localizacao_onibus)
    end

    assert_redirected_to localizacao_onibuses_url
  end
end

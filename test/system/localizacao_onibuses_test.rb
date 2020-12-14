require "application_system_test_case"

class LocalizacaoOnibusesTest < ApplicationSystemTestCase
  setup do
    @localizacao_onibus = localizacao_onibuses(:one)
  end

  test "visiting the index" do
    visit localizacao_onibuses_url
    assert_selector "h1", text: "Localizacao Onibuses"
  end

  test "creating a Localizacao onibus" do
    visit localizacao_onibuses_url
    click_on "New Localizacao Onibus"

    fill_in "Data 2", with: @localizacao_onibus.Data_2
    fill_in "Hora", with: @localizacao_onibus.Hora
    fill_in "Localizacao", with: @localizacao_onibus.Localizacao
    fill_in "Onibus id onibus", with: @localizacao_onibus.Onibus_Id_Onibus
    fill_in "Usuario id", with: @localizacao_onibus.Usuario_Id
    click_on "Create Localizacao onibus"

    assert_text "Localizacao onibus was successfully created"
    click_on "Back"
  end

  test "updating a Localizacao onibus" do
    visit localizacao_onibuses_url
    click_on "Edit", match: :first

    fill_in "Data 2", with: @localizacao_onibus.Data_2
    fill_in "Hora", with: @localizacao_onibus.Hora
    fill_in "Localizacao", with: @localizacao_onibus.Localizacao
    fill_in "Onibus id onibus", with: @localizacao_onibus.Onibus_Id_Onibus
    fill_in "Usuario id", with: @localizacao_onibus.Usuario_Id
    click_on "Update Localizacao onibus"

    assert_text "Localizacao onibus was successfully updated"
    click_on "Back"
  end

  test "destroying a Localizacao onibus" do
    visit localizacao_onibuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Localizacao onibus was successfully destroyed"
  end
end

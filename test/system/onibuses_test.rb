require "application_system_test_case"

class OnibusesTest < ApplicationSystemTestCase
  setup do
    @onibus = onibuses(:one)
  end

  test "visiting the index" do
    visit onibuses_url
    assert_selector "h1", text: "Onibuses"
  end

  test "creating a Onibus" do
    visit onibuses_url
    click_on "New Onibus"

    fill_in "Apelido", with: @onibus.Apelido
    fill_in "Codigoonibus", with: @onibus.CodigoOnibus
    fill_in "Id onibus", with: @onibus.Id_Onibus
    fill_in "Terminal chegada", with: @onibus.Terminal_Chegada
    fill_in "Terminal partida", with: @onibus.Terminal_Partida
    click_on "Create Onibus"

    assert_text "Onibus was successfully created"
    click_on "Back"
  end

  test "updating a Onibus" do
    visit onibuses_url
    click_on "Edit", match: :first

    fill_in "Apelido", with: @onibus.Apelido
    fill_in "Codigoonibus", with: @onibus.CodigoOnibus
    fill_in "Id onibus", with: @onibus.Id_Onibus
    fill_in "Terminal chegada", with: @onibus.Terminal_Chegada
    fill_in "Terminal partida", with: @onibus.Terminal_Partida
    click_on "Update Onibus"

    assert_text "Onibus was successfully updated"
    click_on "Back"
  end

  test "destroying a Onibus" do
    visit onibuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Onibus was successfully destroyed"
  end
end

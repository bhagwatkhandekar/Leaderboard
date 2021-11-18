require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Address", with: @player.address
    fill_in "Contact number", with: @player.contact_number
    fill_in "Game", with: @player.game_id
    fill_in "Match win", with: @player.match_win
    fill_in "Name", with: @player.name
    fill_in "Score", with: @player.score
    fill_in "Team", with: @player.team_id
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Address", with: @player.address
    fill_in "Contact number", with: @player.contact_number
    fill_in "Game", with: @player.game_id
    fill_in "Match win", with: @player.match_win
    fill_in "Name", with: @player.name
    fill_in "Score", with: @player.score
    fill_in "Team", with: @player.team_id
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
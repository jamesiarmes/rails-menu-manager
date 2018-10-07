# frozen_string_literal: true

require 'rails/railtie'
require 'rails_menu_manager/action_controller'

module RailsMenuManager
  # Railtie which will register and set up the menu manager
  class Railtie < Rails::Railtie
    initializer 'rails-menu-manager' do
      ::ActionController::Base.send(:include, RailsMenuManager::ActionController)
    end
  end
end

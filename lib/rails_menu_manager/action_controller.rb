# frozen_string_literal: true

require 'active_support/concern'
require 'rails_menu_manager/menu_item'

module RailsMenuManager
  # Menu methods for ActionController
  module ActionController
    extend ActiveSupport::Concern

    included do
      helper_method :'in_menu?'
    end

    # Checks if a at least one defined and active menu is in given path
    #
    # @param [Array] Menu path to check
    # @return [Boolean] Boolean indicating if at least one menu item is in path
    def in_menu?(*args)
      rails_menu_manger_items.any? { |m| m.in?(*args) }
    end

    # Adds a menu
    # Supports before_action options: if, only, unless, except
    #
    # @param [Array/Hash] Menu path and options.
    def menu(*args)
      rails_menu_manger_add_menu_setting(*args)
    end

    private

    def rails_menu_manger_items
      @rails_menu_manger_items ||= []
    end

    def rails_menu_manger_add_menu_setting(*args)
      opts = args.extract_options!

      path = args.map(&:to_sym)

      rails_menu_manger_items << MenuItem.new(path, opts)
    end

    # Class methods for ActionController
    module ClassMethods
      def menu(*args)
        opts = args.extract_options!

        before_action_opts = {
          only:   opts.delete(:only),
          if:     opts.delete(:if),
          except: opts.delete(:except),
          unless: opts.delete(:unless)
        }

        before_action before_action_opts do
          rails_menu_manger_add_menu_setting(*args, opts)
        end
      end
    end
  end
end

# Rails Menu Manager

Simple menu manager for Rails.
Besides a flat menu structure it supports multiple navigation menus and nested menus as well.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-menu-manager'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-menu-manager

## Usage

Set menu path in controller:

```ruby
class FooController < ApplicationController
  menu :main, :users, except: [:index]

  def index
    menu :sidebar, :users
  end
end
```

Highlight current navigation link(s):

```ruby
content_tag :li, 'Menu', class: in_menu?(:main) ? 'active' : nil

link_to 'users', users_path, class: in_menu?(:main, :users) ? 'active' : nil

link_to 'users', users_path, class: in_menu?(:sidebar, :users) ? 'active' : nil
```

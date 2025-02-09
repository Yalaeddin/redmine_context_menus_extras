require_relative "lib/context_menus_extras_listener"

class ModelHook < Redmine::Hook::Listener
  def after_plugins_loaded(_context = {})
    require_relative "lib/redmine_context_menus_extras/controllers/issue_relations_controller"
  end
end

Redmine::Plugin.register :redmine_context_menus_extras do
  name 'Redmine Context Menus Extras plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'

  requires_redmine_plugin :redmine_base_deface, :version_or_higher => '0.0.1'
end

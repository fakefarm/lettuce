Rails.application.configure do

  # Clearance
  # https://github.com/thoughtbot/clearance
  # =====================

  config.middleware.use Clearance::BackDoor

  # Clearance includes middleware that avoids wasting time spent visiting, loading, and submitting the sign in form. It instead signs in the designated user directly.


  # Usage:
  #
  # visit root_path(as: user)

  # Additionally, if User#to_param is overridden, you can pass a block in order to override the default behavior:
  #
  #   config.middleware.use Clearance::BackDoor do |username|
  #     Clearance.configuration.user_model.find_by(username: username)
  #   end
  # TODO if username is overridden










  # Settings specified here will take precedence over those in config/application.rb.

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  config.action_mailer.default_url_options = { host: 'localhost:3000' }

  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single test. If you are using a tool that
  # preloads Rails for running tests, you may have to set it to true.
  config.eager_load = false

  # Configure static file server for tests with Cache-Control for performance.
  config.serve_static_files   = true
  config.static_cache_control = 'public, max-age=3600'

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false

  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  config.action_mailer.delivery_method = :test

  # Randomize the order test cases are executed.
  config.active_support.test_order = :random

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end

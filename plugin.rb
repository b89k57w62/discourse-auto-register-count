# frozen_string_literal: true

# name: discourse-auto-register-count
# about: Automatically increment fake registration count daily
# version: 1.0.0
# authors: Jeffrey
# url: https://github.com/your-repo

after_initialize do
  load File.expand_path('../jobs/scheduled/auto_increment_register_count.rb', __FILE__)
end

# frozen_string_literal: true

module Jobs
  class AutoIncrementRegisterCount < ::Jobs::Scheduled
    every 1.day

    def execute(args)
      return unless should_run_now?

      increment_register_count
    end

    private

    def should_run_now?
      Time.zone.now.hour == 11
    end

    def increment_register_count
      theme = find_target_theme
      return unless theme

      setting = theme.theme_settings.find_by(name: "total_registered_users")
      return unless setting

      new_value = setting.value.to_i + rand(80..150)
      setting.update!(value: new_value)
    end

    def find_target_theme
      Theme.find_by(name: "Custom User Registration Count")
    end
  end
end

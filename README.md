# Discourse Auto Register Count

A Discourse plugin that automatically increments the fake registration count daily. The plugin runs every day at 7:00 AM and adds 80-150 random users to the theme component setting.

## Installation

Add the plugin repository to your app.yml file:

```yaml
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - git clone https://github.com/yourusername/discourse-auto-register-count.git
```

Rebuild your Discourse container:

```bash
cd /var/discourse
./launcher rebuild app
```

## Requirements

This plugin requires the "Custom User Registration Count" theme component to be installed.

## Usage

Once installed, the plugin automatically runs every day at 7:00 AM to increment the registration count. No configuration is needed.

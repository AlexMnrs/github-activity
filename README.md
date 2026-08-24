# GitHub Activity for Noctalia

Development source for the `alexmnrs/github-activity` Noctalia v5 plugin.

The installable plugin lives in [`github-activity/`](github-activity/). See its
README for setup, requirements, privacy details, and usage.

## Local development

Add this checkout as a local source, enable the plugin, then add the **GitHub
Activity** widget from Noctalia's bar widget picker:

```bash
noctalia msg plugins source add github-activity-dev path "$(pwd)"
noctalia msg plugins enable alexmnrs/github-activity
```

Luau source changes hot-reload. Manifest changes require a Noctalia config
reload. The optional standalone tests need the `luau` command:

```bash
luau tests/activity_spec.luau
```

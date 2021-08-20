# Bootstrap your laptop with Ansible

If your name is not `erik`, you have to rename some of this stuff.

GOAL: Start a USB and install everything I need to develop in 1hour.

## Install

```shell
./scripts/install-ansible-ubuntu.sh
# If the previous command ends with
# "Installation completed successfully"
ansible-playbook local.yaml --ask-become-pass
```

## Test stuff with Docker

```shell
d run -v $(pwd):/home/user -it --entrypoint /bin/bash bootstrap:latest
d commit CONTAINER_ID bootstrap:latest

# Or from scratch
d run -v $(pwd):/home/erik/ansible-bootstrap -it --entrypoint /bin/bash ubuntu
apt update && apt install sudo
adduser erik

./scripts/install-ansible-ubuntu.sh # 4, 2
```

## Update

Run from root of the project, copies your dot-files, then you commit.

```shell
./scripts/update-files.sh
# TODO: ls -li ~/.files
```

If you add more dot-files, you need to update manually by looking at the occurrences of `bashrc`.

### Manual Steps

- Firefox SYNC
- Chrome SYNC
- VS Code SYNC https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync
  or `code --list-extensions`
- Brave extensions
- Rsync

  - Documents
  - Personal
    sync- ssh keys

  #### Firefox Addons

  - Firefox extensions, pwd sync

```
# y0uebzup.default-release could be anything like *.default*
cat ~/.mozilla/firefox/y0uebzup.default-release/addons.json | ./scripts/firefox-list-addons.js

Firefox Addons: [
  'https://addons.mozilla.org/firefox/downloads/file/3817734/duckduckgo_privacy_essentials-2021.7.30-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3803046/ghostery_privacy_ad_blocker-8.5.7-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3817979/easy_youtube_video_downloader_express-17.1-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3672658/decentraleyes-2.0.15-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3802980/i_dont_care_about_cookies-3.3.1-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3711829/cookie_autodelete-3.6.0-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3769639/user_agent_switcher_and_manager-0.4.7.1-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3748919/clearurls-1.21.0-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3816006/read_aloud_a_text_to_speech_voice_reader-1.43.0-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3155605/measure_it-2.2.0-fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3818898/english_gb_language_pack-91.0buildid20210802144751-fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3818896/english_ca_language_pack-91.0buildid20210802144751-fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3713375/firefox_multi_account_containers-7.3.0-fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3409092/location_guard-2.4.0-an+fx.xpi',
  'https://addons.mozilla.org/firefox/downloads/file/3455930/amazon_container-2.0.0-fx.xpi'
]
# These can probably be opened with `firefox $1`
```

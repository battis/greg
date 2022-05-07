# Docker

The accompanying `Dockerfile` builds a simple image that can be used to package `greg` to run in a virtualized container (useful on, say, a Synology NAS). This image is also maintained at [sbattis/greg](https://hub.docker.com/repository/docker/sbattis/greg).

## Synology Setup

1. Create 3 directories to store `greg` files: `config`, `data`, `podcasts`
2. Install Docker (if not already installed) in the Package center
3. In Docker, search the registry for `sbattis/greg` and download
4. Select the `sbattis/greg:latest` image that has been downloaded and click Launch
5. Give the container a reasonable name (e.g. `greg`) and click Advanced Settings
6. Add 3 volumes, to map to your `config`, `data`, and `podcasts` directories as mount paths `/config`, `/data`, and `/podcasts` respectively and click Apply
7. Click Next
8. **Uncheck** the option to run the container after the wizard is finished and click Done
9. In the Task Scheduler control panel, create a new scheduled task that is a user-defined script.
10. Set the user to `root` and give the task a reasonable anme (e.g. `Download Podcasts`)
11. Set the schedule (e.g. 11:59pm every day)
12. Under Task Settings, configure any desired email notifications and set the script to `dock start greg` (assuming that's what you named your container) and click OK
13. Accept the scary warning about modifying system configurations etc. (it's about running as the root user)
14. If you want, give the task a trial Run

Log files can be viewed by opening the container in Docker.

## Future improvements

- A (smaller) Synology-specific image
- Easier configuration
- Better err-handling

When will this happen? Who knows.

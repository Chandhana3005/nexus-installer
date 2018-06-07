# Nexus Auto-installer

Automatically setup a Nexus OSS instance via bash.
Nexus will be set to run as a service.
The service uses systemctl so you can check the status of Nexus using:

```
sudo systemctl status nexus
```

Default settings are used for the Nexus installation.
When the script is done, the service will be started automatically.
Give it a minute or two to spin up.

When all is done you can access Nexus on `localhost:8081`.
Logging in can be done with username `admin` and password `admin123`.

If something goes wrong, you can check the logfile under:
```
/opt/sonatype-work/nexus3/logs/nexus.log
```

The installation directory is `/opt/nexus`
The data directory is `/opt/sonatype-work`

## Getting Started

Checkout the code, run the install-nexus script and watch the magic unfold.

### Prerequisites

I use the apt package manager so make sure you have a distro that supports this package manager (Debian).

### Installing

Run the install-nexus script by running:

```
./install-nexus.sh
```

## Authors

* **Philippe Cambien** - [cambiph](https://gitlab.com/cambiph)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details

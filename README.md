# Authorized Metasploit Lab Notes

Study notes from **authorized** Metasploit practice in an isolated lab (Kali + intentionally vulnerable VMs such as Metasploitable). This is a **portfolio write-up**, not a toolkit and not a how-to for attacking systems you do not own.

![Lab](https://img.shields.io/badge/Scope-Authorized%20lab%20only-red?style=for-the-badge)
![Python](https://img.shields.io/badge/Notes-Markdown-3776AB?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

## What this repo is

- High-level phases of a typical pentest engagement (recon → validate → report)
- Environment setup reminders for a home lab
- Emphasis on **permission, isolation, and reporting**

## What this repo is not

- Exploit code, payloads, or step-by-step attack procedures
- Instructions for scanning or exploiting production or third-party systems

If you need those details, use official Metasploit / Offensive Security documentation **inside a lab you control**.

## Lab principles

1. **Written authorization** and a network that cannot reach the public internet by accident (host-only or isolated virtual LAN).
2. **Document findings**, not “get a shell.” Screenshots and notes should support a report: asset, issue class, impact, remediation.
3. **Patch and harden** the same services you studied: disable unused listeners, apply vendor updates, restrict management planes.

See [docs/methodology.md](docs/methodology.md) for the phase outline.

## Setup (lab VM only)

- Hypervisor: VirtualBox or VMware
- Attacker VM: Kali or equivalent, Metasploit Framework installed from the distro
- Target VM: Metasploitable or another **intentionally vulnerable** image on the same isolated network

```bash
git clone https://github.com/RajaWasim100/metasploit-penetration-testing.git
cd metasploit-penetration-testing
```

## Author

**Raja Wasim** — [github.com/RajaWasim100](https://github.com/RajaWasim100)

Internship context: [Developershub](https://github.com/RajaWasim100/Developershub)

# OOD Interactive VSCode App

This is an Open Ondemand app designed to run a web version of VSCode.

Both software modules and SIF containers are supported by this app.

## Prerequisites

Here are the basic software requirements:

- [code-server](https://github.com/coder/code-server)
  - Version >= 4.6.0
- [Lmod](https://lmod.readthedocs.io/en/latest/index.html)
- [Apptainer](https://apptainer.org/)

## Site Customizations

- `form.js`
  - Optional and can be removed.
- `form.yml.erb`
  - Values need to be updated to reflect your site.
  - The dynamic partition list may or maynot work for you.
- `before.sh`
  - Update the host/HOST assignment to reflect your node names.  We use a '-ib0' to force the usage of specific network so this will break for most other people.
- `modules.sh`
  - You'll need to adjust what modules are loaded.
- `sif.sh`
  - We install apptainer globally but if you need to load modules you can add that here.
- `submit.yml.erb`
  - Adjujst parameters to match the scheduler/settings at your site.

# AAP-Workshop

## Requirements

You are going to need a host to run the ansible playbooks.  

The current development and testbed is RHEL v8.7 with ansible-core v2.12.2

Initial development and testing of these playbooks start with AAP 2.3

## Setting up playbooks

### Decide where to unpack playbooks

On the host with ansible installed, decide where to keep the playbooks. My preference is to unpack the playbooks in '/usr/local/src', but another obvious choice is '/root'.

```cd /usr/local/src```

Now download (clone) the project from github:

```git clone --recurse-submodules https://github.com/xtophd/AAP-Workshop```

Change directories and begin the configuration process:

```cd AAP-Workshop```

### Configuration

The easiest method to creating a working config is the us the setup tool and work through the shell based Q&A form.  This project also utilizes a role for deploying the physical hardware or VMs (check out the xtoph_deploy repository for supported target platforms and methods).

If you plan to deploy your own hosts, you still need to go through the configuration steps ... but instead of running `xtoph_deploy.sh` to begin the install, you will simply execute `aap-workshop.sh`.

⚠️ The setup script creates config files in `./config`.  All setup answers are saved in `aap-workshop-setup.ans`, although passwords are NEVER saved in the answer file.  Each time you invoke the setup to rebuild all the configs, you will need to walk through all the password entries in the menu.

⚠️ Passwords ARE stored however in the ansible-vault encrypted file `credentials.yml`.

Start the setup script:

```./sample-configs/aap-workshop-setup.sh```


More instructions coming soon...



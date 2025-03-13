# Cluster Scripts

This repository contains a collection of utility scripts designed to simplify managing your Kubernetes cluster.

## Installation

To get started, clone the repository and give executable permissions to the scripts if necessary:

```shell
git clone https://github.com/xstar97/cluster-scripts ./scripts
```

edit the `/home/vscode/.config/fish/config.fish` for example if using the dev container in vscode like this:

```shell
if status is-interactive
    # Commands to run in interactive sessions can go here
    source $PWD/scripts/utils.sh

end
```

you can alternatively just run the command manually yourself....

```shell
source $PWD/scripts/utils.sh
```

To view the available commands and get detailed usage information, run:

```bash
$PWD/scripts/utils.sh
```

The `-h` flag provides a description of each function along with example usage.

example:

```shell
$PWD/scripts/utils.sh -h dns
```

outputs:

```
Function: dns
Description:  Get cluster urls from a chart.
Example:  dns chart [namespace]
```

### Alias function

Copy the [alias](./aliases.yaml.example) file in your own repo and rename it to `aliases.yaml` and edit/add the commands you like. Now you can run:

```shell
gen_alias --config /path/to/aliases.yaml
```

this will create alias commands for the utils script for example:

```shell
utils
```

## Updating Scripts

To ensure your scripts are up-to-date, use the following command to pull the latest changes:

```shell
updateScripts
```

or...

```shell
git --git-dir=./scripts/.git --work-tree=./scripts pull
```

## Contributing

Feel free to contribute by submitting issues and pull requests. For major changes, please open an issue first to discuss what you would like to change.
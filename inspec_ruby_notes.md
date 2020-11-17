
# Inspec as Ruby Code

https://github.com/inspec/inspec

## Setup Environment

### Redhat/CentOS 8

Install dependencies and inspec gem (_can compile source to gem if desired_)

```
sudo dnf install ruby ruby-devel make gcc gcc-c++

sudo dnf install redhat-rpm-config

gem install inspec
```

### Ubuntu
Install dependencies and inspec gem

```
sudo apt install ruby ruby-dev gcc g++ make

sudo gem install inspec
```

## Ruby Code

Example using the inspec cli library in a similar fashion to inspec-bin

```
require 'inspec/cli'

Inspec::InspecCLI.start(ARGV, enforce_license: false)
```

Example using the inspec cli library and calling a specific function and profile

```
require 'inspec/cli'

Inspec::InspecCLI.start(["exec", "inspec-tests"], enforce_license: false)
```

Example using the Runner library

```
require 'inspec'

r = Inspec.Runner.new()
r.add_target("/home/gary/inspec-tests")
r.run
```

## Run the Code

Example run with a profile folder named "inspec-tests" against a remote system using ssh
```
ruby myinspec.rb exec inspec-tests -t ssh://gary@myipaddr --password 'mypassword' --reporter cli junit:mytests.xml
```
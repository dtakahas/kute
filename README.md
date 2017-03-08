# kute

kubectl with some cute shortcuts.

## Installation

Download the binary and place it in your $PATH

## Usage
```
kute [command] [arguments]

Command:
  help                             show this help text
  con (context, cont)              show current k8s context
  cd <context>                     switch k8s contexts (example: kute cd usw1)
  go <namespace> <container type>  exec to a container of the specified type (example: kute go collab-production oddjob)
```

Also accepts any valid kubectl args.

## Contributors

Dave Takahashi - creator, maintainer
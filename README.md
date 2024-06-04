# Nedoto CLI

With this simple command line application you can call Nedoto API via the CLI.

It can be useful to test the connection or simply check the response during the development phase.

## Prerequisites

To use the CLI command you should:

- have an active account on [nedoto.com](https://nedoto.com).
- have an active [api-key](https://app.nedoto.com/api-keys) in nedoto
- have an active [variable](https://app.nedoto.com/variables) in nedoto

Don't have an account on Nedoto yet?

Visit our [website](https://nedoto.com), and create you free account [here](https://app.nedoto.com/register) (no credit card required).

## How to use it

Execute the bash script, and you'll be prompted to enter your API key and the Variable name.

```bash
$ bash nedoto-cli.bash
    _   __         __      __
   / | / /__  ____/ /___  / /_____
  /  |/ / _ \/ __  / __ \/ __/ __ \
 / /|  /  __/ /_/ / /_/ / /_/ /_/ /
/_/ |_/\___/\__,_/\____/\__/\____/

Welcome to Nedoto CLI

Please enter your API key:
<your api-key> #ex. 61ae634d-4b8e-4ec6-ab13-374b3a9523a7

Please enter your variable name:
<your variable slug> #ex. my-slug

Response:
{
   "execution_time" : 0.00298714637756348,
   "variable" : {
      "data" : {
         "created_at" : "2024-04-21T20:25:30+00:00",
         "name" : "my-slug",
         "type" : "code",
         "value" : "{\"example-key\": \"example-value\"}"
      }
   }
}
```

# Want to improve something?
Please feel free to open a PR if you want to improve something on this page.

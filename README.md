# Nedoto CLI

With this simple command line application you can call Nedoto API via the CLI.

It can be useful to test the connection or simply check the response during the development phase.

## Prerequisites

To use the CLI command you should:

- have an active account on [Nedoto.com](https://nedoto.com).
- have an active api-key in nedoto
- have an active variable in nedoto

Don't have an account on Nedoto yet?

Create one for free [here](https://nedoto.com) (no credit card required).

## How to use it

Execute the bash script and you'll be prompted to enter your API key and variable name.

```bash
$ bash test.bash
    _   __         __      __
   / | / /__  ____/ /___  / /_____
  /  |/ / _ \/ __  / __ \/ __/ __ \
 / /|  /  __/ /_/ / /_/ / /_/ /_/ /
/_/ |_/\___/\__,_/\____/\__/\____/

Welcome to Nedoto CLI

Please enter your API key:
61ae634d-4b8e-4ec6-ab13-374b3a9523a7

Please enter your variable name:
banner-configuration

Response:
{
   "execution_time" : 0.00298714637756348,
   "variable" : {
      "data" : {
         "created_at" : "2024-04-21T20:25:30+00:00",
         "name" : "banner-configuration",
         "type" : "code",
         "value" : "{\"example-key\": \"example-value\"}"
      }
   }
}
```

# Want to improve something?
Please feel free to open a PR if you want to improve something on this page.

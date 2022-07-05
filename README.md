# mulib-examples
tutorials, examples and community-submitted code for mulib

in the middle of (yet another) major reorganization of mulib-examples with a few goals:

* flatten the directory structures a bit
* eliminate the "tutorial" vs "example" false distinction
* update everything to use the mu_stdbsp.h API
* resurrect your previous examples and demos (i_ching, pong, wall_timer)

The general pattern under mulib_examples/ for an example_app is:

```
mulib_examples/
|   README.md
|   example_app/
|   |   common/
|   |   |   example_app.c
|   |   |   example_app.h
|   |   |   ... any other common source files ...
|   |   <platform_a>/
|   |   |   <ide specific files>
|   |   <platform_b>/
|   |   |   <ide specific files>
```

... where <platform_a> is a specific processor and dev board, e.g. nucleo_lo53r8.

In addition to the <example_app> directory, there are two others.  Our old friend:

```
mulib_examples/
|   mulib/
```

and...

```
mulib_examples/
|   mu_platform/
|   |   common/
|   |   |   mu_time.h
|   |   |   mu_stdbsp.h
|   |   |   mu_stddrv.h
|   |   <platform_a>/
|   |   |   mu_config.h
|   |   |   mu_time.c
|   |   |   mu_stdbsp.c
|   |   <platform_b>/
|   |   |   mu_config.h
|   |   |   mu_time.c
|   |   |   mu_stdbsp.c
```

(If you look really closely, you'll see that I've defined the API for mu_stddrv ("standard drivers" that know about mu_sched, mu_task, etc) but haven't implemented it yet.

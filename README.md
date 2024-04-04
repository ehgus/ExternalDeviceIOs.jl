# ExternalDeviceIOs

An **experimental** definition for explicitly controllable I/O device.

Example of the explicitly controllable I/O device are
 - cameras where framerate, trigger mode, or shutter speed can be controllable.
 - microdisplays that can save images and load them quickly in their own memory.
 - I/O device where the driver is minimally implemented, so that high-level abstraction is required by users.

It has the following structure:

```mermaid
flowchart LR
    A["Name of I/O device"]<-- open/close --> B;
    B["I/O stream (not usable)"]<-- activate/deativate --> C;
    C["I/O stream (usable)"];
```

ExternalDevice IO will basically support
 - The definition of "name" of I/O devices and function `browse` to list available devices.
 - functions `open`, `close`, and `isopen`
 - functions `activate`,`deactivate`, and `isactivated`.

Each developers should 
functions for setting variables of I/O device before activation.

Note that access checker of IOStream (`isreadable` and `iswritable`) should set false before activation.

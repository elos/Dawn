Dawn
----

Dawn uses Carthage to manage framework dependencies. You can see the [Carfile](./Cartfile) in this directory.

To install Carthage on Mac OS X, use [hombrew](linktohombrew).

```bash
    brew install carthage
```

Then update Carthage dependencies by using submodules, and for the iOS platform.

```bash
    carthage update --use-submodules --platform iOS
```

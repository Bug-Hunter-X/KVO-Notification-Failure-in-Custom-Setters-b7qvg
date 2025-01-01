# Objective-C KVO Bug: Missing KVO Notifications in Custom Setters

This repository demonstrates a common error when implementing custom setters in Objective-C and using Key-Value Observing (KVO).  If the `willChangeValueForKey:` and `didChangeValueForKey:` methods aren't properly called within the custom setter, KVO observers won't be notified of property changes, leading to unexpected behavior.

The `BuggyKVOSetter.m` file shows the incorrect implementation, while `FixedKVOSetter.m` provides the corrected version.

## Reproducing the Bug

1. Clone this repository.
2. Compile and run `BuggyKVOSetter.m`.  Observe that the UI (or any KVO-dependent logic) does not update as expected.
3. Compile and run `FixedKVOSetter.m`. Observe that the UI (or KVO-dependent logic) updates correctly.
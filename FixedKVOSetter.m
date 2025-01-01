The solution is to ensure that `willChangeValueForKey:` is called before modifying the observed property and `didChangeValueForKey:` is called afterward within the custom setter.  Here's the corrected code:

```objectivec
@implementation MyClass

- (void)setCustomProperty:(NSString *)newCustomProperty {
    [self willChangeValueForKey:@"customProperty"];
    _customProperty = newCustomProperty;
    [self didChangeValueForKey:@"customProperty"];
}

@end
```
This ensures that KVO observers receive proper notifications, preventing unexpected behavior.
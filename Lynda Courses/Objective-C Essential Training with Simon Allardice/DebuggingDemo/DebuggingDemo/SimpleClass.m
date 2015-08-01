#import "SimpleClass.h"

@implementation SimpleClass

-(void)simpleMethod {
    NSLog(@"In the custom class method");
}

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"This is the custom init method for the new class");
    }
    return self;
}
@end

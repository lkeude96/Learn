#import "MyNewClass.h"


@implementation MyNewClass

-(NSString *)someMethod {
    // uncomment these four lines to create a "control reaches end of non-void function" warning
    int a = 5;
    int b =  6;
    int c = a + b;
    if ( c > 10 ) {
        
    }
          // more code
          // more code
          // careful! might end up not returning anything
    return @"The result is....";
}

@end

#import "ReleaseAssembly.h"
#import "RootAssembly.h"
#import "MainAssembly.h"
#import "AppDelegate.h"


@implementation ReleaseAssembly

- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(assembly) with:self];
    }];
}
@end
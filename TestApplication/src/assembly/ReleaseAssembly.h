#import <Foundation/Foundation.h>
#import <Typhoon/TyphoonAssembly.h>

@class AuthorizationAssembly;
@class AppDelegate;
@class RootAssembly;
@class MainAssembly;
//@class MainAssembly;


@interface ReleaseAssembly : TyphoonAssembly

@property(nonatomic, strong, readonly) RootAssembly *rootAssembly;
@property(nonatomic, strong, readonly) MainAssembly *mainAssembly;

- (AppDelegate *)appDelegate;

@end

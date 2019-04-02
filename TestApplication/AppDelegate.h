#import <UIKit/UIKit.h>

@class ReleaseAssembly;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ReleaseAssembly *assembly;

+ (AppDelegate*)shared;

@end


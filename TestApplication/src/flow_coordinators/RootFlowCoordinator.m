#import "RootScreen.h"
#import "RootFlowCoordinator.h"
#import "RootScreenViewController.h"
#import "AppDelegate.h"
#import "ReleaseAssembly.h"
#import "MainScreen.h"
#import "MainAssembly.h"

@interface RootFlowCoordinator()

@property (weak, nonatomic) UIViewController *rootViewController;

@end

@implementation RootFlowCoordinator

- (UIViewController *)launchViewController {
    self.rootViewController = [self.rootAssembly rootScreenViewController:self];
    return self.rootViewController;
}

#pragma mark RootScreenModuleOutput

- (void)showGoodsList {
    UIViewController *mainController = [[[AppDelegate shared].assembly.mainAssembly mainFlowCoordinator] launchViewController];

    [self.rootViewController presentViewController:mainController animated:YES completion:nil];
}

@end

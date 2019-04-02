#import "MainScreen.h"
#import "MainFlowCoordinator.h"
#import "BaseFlowCoordinator.h"
#import "MainScreenPresenter.h"
#import "MainScreenViewController.h"

@interface MainFlowCoordinator() <BaseFlowCoordinator>

@property (weak, nonatomic) UIViewController *rootViewController;

@end

@implementation MainFlowCoordinator

- (UIViewController *)launchViewController {
    self.rootViewController = [self.mainAssembly mainScreenViewController:self];
    return self.rootViewController;
}

@end
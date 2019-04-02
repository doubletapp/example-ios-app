#import <Foundation/Foundation.h>
#import "BaseFlowCoordinator.h"

@protocol MainScreenModuleOutput;
@class MainScreenPresenter;
@class MainScreenViewController;

@protocol MainFlowCoordinatorOutput

- (MainScreenViewController *)mainScreenViewController:(__weak id<MainScreenModuleOutput>)moduleOutput;
- (MainScreenPresenter *)mainScreenViewPresenter:(__weak id<MainScreenModuleOutput>)moduleOutput;

@end

@interface MainFlowCoordinator : NSObject<BaseFlowCoordinator, MainScreenModuleOutput>

@property (weak, nonatomic) id<MainFlowCoordinatorOutput> mainAssembly;

@end
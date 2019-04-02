#import <Foundation/Foundation.h>
#import "BaseFlowCoordinator.h"

@class RootScreenViewController;
@class RootScreenPresenter;
@protocol RootScreenModuleOutput;


@protocol RootFlowCoordinatorOutput

- (RootScreenViewController *)rootScreenViewController:(__weak id<RootScreenModuleOutput>)moduleOutput;
- (RootScreenPresenter *)rootScreenViewPresenter:(__weak id<RootScreenModuleOutput>)moduleOutput;

@end


@interface RootFlowCoordinator : NSObject<BaseFlowCoordinator, RootScreenModuleOutput>

@property (weak, nonatomic) id<RootFlowCoordinatorOutput> rootAssembly;

@end

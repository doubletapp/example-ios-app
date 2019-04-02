#import <Foundation/Foundation.h>
#import <Typhoon/TyphoonAssembly.h>
#import "MainFlowCoordinator.h"

@class MainFlowCoordinator;


@interface MainAssembly : TyphoonAssembly<MainFlowCoordinatorOutput>

- (MainFlowCoordinator *)mainFlowCoordinator;

@end
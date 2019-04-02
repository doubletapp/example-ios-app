#import <Foundation/Foundation.h>
#import <Typhoon/TyphoonAssembly.h>
#import "RootFlowCoordinator.h"

@class RootFlowCoordinator;

@interface RootAssembly : TyphoonAssembly<RootFlowCoordinatorOutput>

- (RootFlowCoordinator *)rootFlowCoordinator;

@end

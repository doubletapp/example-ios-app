#import "MainScreen.h"
#import "MainAssembly.h"
#import "MainFlowCoordinator.h"
#import "MainScreenViewController.h"
#import "MainScreenPresenter.h"


@implementation MainAssembly

- (MainFlowCoordinator *)mainFlowCoordinator {
    return [TyphoonDefinition withClass:[MainFlowCoordinator class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(mainAssembly) with:self];
    }];
}


- (MainScreenViewController *)mainScreenViewController:(__weak id<MainScreenModuleOutput>)moduleOutput {
    return [TyphoonDefinition withClass:[MainScreenViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithNibName:bundle:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@"MainScreenView"];
            [initializer injectParameterWith:nil];
        }];
        [definition injectProperty:@selector(viewOutput) with:[self mainScreenViewPresenter:moduleOutput]];
    }];
}

- (MainScreenPresenter *)mainScreenViewPresenter:(__weak id<MainScreenModuleOutput>)moduleOutput {
    return [TyphoonDefinition withClass:[MainScreenPresenter class]
                          configuration:^(TyphoonDefinition* definition) {
                              [definition injectProperty:@selector(moduleOutput) with:moduleOutput];
                              [definition injectProperty:@selector(viewInput) with:[self mainScreenViewController:moduleOutput]];
                          }];
}

@end
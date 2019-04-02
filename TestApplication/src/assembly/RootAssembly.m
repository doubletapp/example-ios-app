#import "RootScreen.h"
#import "RootAssembly.h"
#import "RootScreenViewController.h"
#import "RootScreenPresenter.h"


@implementation RootAssembly

- (RootFlowCoordinator *)rootFlowCoordinator {
    return [TyphoonDefinition withClass:[RootFlowCoordinator class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(rootAssembly) with:self];
    }];
}

- (RootScreenViewController *)rootScreenViewController:(__weak id<RootScreenModuleOutput>)moduleOutput {
    return [TyphoonDefinition withClass:[RootScreenViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithNibName:bundle:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@"RootScreenView"];
            [initializer injectParameterWith:nil];
        }];
        [definition injectProperty:@selector(viewOutput) with:[self rootScreenViewPresenter:moduleOutput]];
    }];
}

- (RootScreenPresenter *)rootScreenViewPresenter:(__weak id<RootScreenModuleOutput>)moduleOutput {
    return [TyphoonDefinition withClass:[RootScreenPresenter class]
            configuration:^(TyphoonDefinition* definition) {
                [definition injectProperty:@selector(moduleOutput) with:moduleOutput];
                [definition injectProperty:@selector(viewInput) with:[self rootScreenViewController:moduleOutput]];
    }];
}


@end
#import <Foundation/Foundation.h>
#import "BaseScreen.h"

@protocol RootScreenModuleInput<BaseScreenModuleInput>
@end

@protocol RootScreenModuleOutput<BaseScreenModuleOutput>
- (void)showGoodsList;
@end

@protocol RootScreenViewInput<BaseScreenViewInput>
@end

@protocol RootScreenViewOutput<BaseScreenViewOutput>

- (void)didAppear;

@end
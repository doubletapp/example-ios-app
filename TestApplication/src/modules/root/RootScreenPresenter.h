#import <Foundation/Foundation.h>
#import "RootScreen.h"


@interface RootScreenPresenter : NSObject<RootScreenModuleInput, RootScreenViewOutput>

@property (strong, nonatomic) id<RootScreenModuleOutput> moduleOutput;
@property (weak, nonatomic) id<RootScreenViewInput> viewInput;

@end
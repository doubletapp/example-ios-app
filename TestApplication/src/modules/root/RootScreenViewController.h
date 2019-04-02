#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RootScreen.h"


@interface RootScreenViewController : UIViewController<RootScreenViewInput>

@property (strong, nonatomic) id<RootScreenViewOutput>viewOutput;

@end
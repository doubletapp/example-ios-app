#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MainScreen.h"


@interface MainScreenViewController : UIViewController<MainScreenViewInput, UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) id<MainScreenViewOutput>viewOutput;


@end
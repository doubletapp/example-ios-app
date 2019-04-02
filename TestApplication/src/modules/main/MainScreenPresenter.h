#import <Foundation/Foundation.h>
#import "MainScreen.h"


@interface MainScreenPresenter : NSObject<MainScreenModuleInput, MainScreenViewOutput>

@property (strong, nonatomic) NSArray<UITableViewCellDescription *> *cellDescriptions;

@property (strong, nonatomic) id<MainScreenModuleOutput> moduleOutput;
@property (weak, nonatomic) id<MainScreenViewInput> viewInput;

@end
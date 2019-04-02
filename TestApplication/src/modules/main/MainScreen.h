#import <Foundation/Foundation.h>
#import "BaseScreen.h"

@class DataObject;
@class UITableViewCellDescription;

@protocol MainScreenModuleInput<BaseScreenModuleInput>
@end

@protocol MainScreenModuleOutput<BaseScreenModuleOutput>
@end

@protocol MainScreenViewInput<BaseScreenViewInput>

- (void)reloadData;

@end

@protocol MainScreenViewOutput<BaseScreenViewOutput>

@property (strong, nonatomic) NSArray<UITableViewCellDescription *> *cellDescriptions;

- (void)didLoad;

@end
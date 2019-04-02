#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface UITableViewCell(UITableViewCellRegistration)

+ (NSString *)cellIdentifier;
- (void)configureFor:(NSObject *)object;

@end
#import "UITableViewCellRegistration.h"


@implementation UITableViewCell(UITableViewCellRegistration)

+ (NSString *)cellIdentifier {
    return NSStringFromClass(self);
}

- (void)configureFor:(NSObject *)object {

}

@end
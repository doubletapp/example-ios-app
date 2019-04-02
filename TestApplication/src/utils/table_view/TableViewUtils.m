#import "TableViewUtils.h"
#import "UITableViewCellRegistration.h"


@implementation UITableViewCellDescription

- (id)initWithCellType:(NSString *)cellType object:(id)object height:(CGFloat)height {
    self = [super init];

    if(self) {
        self.cellType = cellType;
        self.object = object;
        self.height = height;
    }

    return self;
}


@end


@implementation UITableView(CellDescription)

- (void)registerCell:(NSString *)className {
    [self registerNib:[UINib nibWithNibName:className bundle:nil] forCellReuseIdentifier:className];
}

- (UITableViewCell *)configureCellWithCellDescription:(UITableViewCellDescription *)cellDescription forIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self dequeueReusableCellWithIdentifier:cellDescription.cellType forIndexPath:indexPath];

    [cell configureFor:cellDescription.object];

    return cell;
}

@end
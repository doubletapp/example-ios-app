#import "MainScreenHeaderCell.h"


@implementation MainScreenHeaderCellObject

- (id)initWithTitle:(NSString *)title  {
    self = [super init];

    if(self) {
        self.title = title;
    }

    return self;
}

@end

@interface MainScreenHeaderCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation MainScreenHeaderCell

- (void)configureFor:(NSObject *)object {
    if (![object isKindOfClass:[MainScreenHeaderCellObject class]]) {
        return;
    }

    MainScreenHeaderCellObject *cellObject = (MainScreenHeaderCellObject *)object;

    self.titleLabel.text = cellObject.title;
}

@end

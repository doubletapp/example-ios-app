#import "MainScreenCell.h"
#import "DataService.h"

@interface MainScreenCell()

@property (weak, nonatomic) IBOutlet UILabel *cellTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *cellSubTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;

@end

@implementation MainScreenCell

- (void)configureFor:(NSObject *)object {
    if (![object isKindOfClass:[DataObject class]]) {
        return;
    }

    DataObject *cellObject = (DataObject *)object;

    self.cellTitleLabel.text = cellObject.title;
    self.cellSubTitleLabel.text = cellObject.subTitle;
    self.logoImageView.image = [UIImage imageNamed:cellObject.imageName];
}

@end
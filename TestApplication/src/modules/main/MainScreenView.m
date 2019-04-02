#import "MainScreenView.h"
#import "TableViewUtils.h"
#import "MainScreenCell.h"
#import "UITableViewCellRegistration.h"
#import "MainScreenHeaderCell.h"


@interface MainScreenView()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation MainScreenView {

}

- (void)awakeFromNib {
    [super awakeFromNib];

    [self setupTableView];
}

- (void)reloadData {
    [self.tableView reloadData];
}


#pragma mark - Private

- (void)setupTableView {
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

    [self.tableView registerCell:[MainScreenCell cellIdentifier]];
    [self.tableView registerCell:[MainScreenHeaderCell cellIdentifier]];
}

@end
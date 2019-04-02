#import "MainScreenViewController.h"
#import "TableViewUtils.h"
#import "MainScreenCell.h"
#import "UITableViewCellRegistration.h"
#import "MainScreenView.h"


@implementation MainScreenViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    [self.viewOutput didLoad];
}


#pragma mark - UITableViewDataSource, UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewOutput.cellDescriptions.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView configureCellWithCellDescription:self.viewOutput.cellDescriptions[indexPath.row] forIndexPath:indexPath];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.viewOutput.cellDescriptions[indexPath.row].height;
}


- (void)reloadData {
    [((MainScreenView *)self.view) reloadData];
}

@end

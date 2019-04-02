#import "MainScreenPresenter.h"
#import "DataService.h"
#import "ProjectHelper.h"
#import "TableViewUtils.h"
#import "MainScreenHeaderCell.h"
#import "UITableViewCellRegistration.h"
#import "MainScreenCell.h"


@implementation MainScreenPresenter

- (void)didLoad {

    weakSelfDeclare;

    [DataService fetchData:^(NSArray<DataObject *> *dataObjects, NSError *error) {
        if (error) {
            //TODO show error
            return;
        }

        [weakSelf updateUIWithData:dataObjects];
    }];
}

#pragma mark - Private

- (void)updateUIWithData:(NSArray<DataObject *> *)dataObjects {

    NSMutableArray<UITableViewCellDescription *> *cellDescriptions = [NSMutableArray array];

    [cellDescriptions
            addObject:[[UITableViewCellDescription alloc]
                    initWithCellType:[MainScreenHeaderCell cellIdentifier]
                              object:[[MainScreenHeaderCellObject alloc] initWithTitle:@"Generating fancy text"]
                              height:100
            ]
    ];


    for (DataObject *dataObject in dataObjects) {
        [cellDescriptions
                addObject:[[UITableViewCellDescription alloc]
                        initWithCellType:[MainScreenCell cellIdentifier]
                                  object:dataObject
                                  height:80
                ]
        ];
    }

    self.cellDescriptions = cellDescriptions;
    [self.viewInput reloadData];
}

@end
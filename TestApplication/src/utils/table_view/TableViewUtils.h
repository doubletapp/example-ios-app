#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UITableViewCellDescription: NSObject

@property (strong, nonatomic) NSString *cellType;
@property (strong, nonatomic) id object;
@property (atomic) CGFloat height;

- (id)initWithCellType:(NSString *)cellType object:(id)object height:(CGFloat)height;

@end


@interface UITableView(CellDescription)

- (void)registerCell:(NSString *)className;
- (UITableViewCell *)configureCellWithCellDescription:(UITableViewCellDescription *)cellDescription forIndexPath:(NSIndexPath *)indexPath;

@end


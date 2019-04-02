#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MainScreenHeaderCellObject: NSObject

@property (strong, nonatomic) NSString *title;

- (id)initWithTitle:(NSString *)title;

@end


@interface MainScreenHeaderCell : UITableViewCell

@end
#import <Foundation/Foundation.h>

@interface DataObject: NSObject

@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *subTitle;

- (id)initWithImageName:(NSString *)imageName title:(NSString *)title subtitle:(NSString *)subTitle;

@end

@interface DataService : NSObject

+ (void)fetchData:(void (^)(NSArray<DataObject *> *, NSError *))callback;

@end
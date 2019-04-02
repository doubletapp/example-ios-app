#import "DataService.h"
#import "TableViewUtils.h"

@implementation DataObject

- (id)initWithImageName:(NSString *)imageName title:(NSString *)title subtitle:(NSString *)subTitle {
    self = [super init];

    if(self) {
        self.imageName = imageName;
        self.title = title;
        self.subTitle = subTitle;
    }

    return self;
}


@end

@implementation DataService

+ (void)fetchData:(void (^)(NSArray<DataObject *> *, NSError *))callback {
    dispatch_async(dispatch_get_main_queue(), ^(void){
        NSMutableArray<DataObject *> *dataArray = [NSMutableArray array];

        [dataArray addObject:[[DataObject alloc] initWithImageName:@"testImage_1" title:@"So perhaps" subtitle:@"you've generated some fancy text"]];
        [dataArray addObject:[[DataObject alloc] initWithImageName:@"testImage_2" title:@"and you're content" subtitle:@"that you can now copy and paste your fancy text in the comments"]];
        [dataArray addObject:[[DataObject alloc] initWithImageName:@"testImage_3" title:@"section of funny cat videos" subtitle:@"but perhaps you're wondering"]];
        [dataArray addObject:[[DataObject alloc] initWithImageName:@"testImage_4" title:@"how it's even possible" subtitle:@"to change the font of your text?"]];
        [dataArray addObject:[[DataObject alloc] initWithImageName:@"testImage_5" title:@"Is it some sort of hack?" subtitle:@"Are you copying and pasting an actual font?"]];
        [dataArray addObject:[[DataObject alloc] initWithImageName:@"testImage_6" title:@"Well, the answer is actually no" subtitle:@"rather than generating fancy fonts"]];
        [dataArray addObject:[[DataObject alloc] initWithImageName:@"testImage_7" title:@" this converter creates fancy symbols." subtitle:@"The explanation starts with unicode;"]];

        callback(dataArray, nil);
    });
}


@end
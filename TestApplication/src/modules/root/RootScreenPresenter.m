#import "RootScreenPresenter.h"
#import "UserService.h"


@implementation RootScreenPresenter {

}

- (void)didAppear {
    if ([self isUSerLoggedId]) {
        [self.moduleOutput showGoodsList];
    } else {
        //Show registration screen for example
    }
}

#pragma mark - Private

- (BOOL)isUSerLoggedId {
    return [UserService isUserLoggedIn];
}

@end
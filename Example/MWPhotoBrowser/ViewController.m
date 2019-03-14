//
//  ViewController.m
//  MWPhotoBrowser
//
//  Created by 杨永正 on 2019/3/13.
//  Copyright © 2019年 yangyongzheng. All rights reserved.
//

#import "ViewController.h"
#import <MWPhotoBrowser.h>

@interface ViewController () <MWPhotoBrowserDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    
    MWPhotoBrowser *browser = [[MWPhotoBrowser alloc] initWithDelegate:self];
    browser.alwaysShowControls = YES;
    browser.displayActionButton = NO;
    [browser setCurrentPhotoIndex:3];
    [self.navigationController pushViewController:browser animated:YES];
    browser.navigationController.navigationBar.titleTextAttributes = @{@"UITextAttributeTextColor":[UIColor whiteColor]};
}

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser {
    return 10;
}

- (id<MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index {
    MWPhoto *photo = [MWPhoto photoWithURL:[NSURL URLWithString:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552540354720&di=422394b2e26e8587177a5da318cc9244&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2Fe61190ef76c6a7ef7d58560df3faaf51f3de669b.jpg"]];
    return photo;
}

@end

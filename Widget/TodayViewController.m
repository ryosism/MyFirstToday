//
//  TodayViewController.m
//  Widget
//
//  Created by 祖父江亮 on 2016/08/23.
//  Copyright © 2016年 Ryo Sobue. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    NSString* groupId = @"group.com.test.MyFirstToday";
    NSUserDefaults* ud = [[NSUserDefaults alloc] initWithSuiteName:groupId];

    self.valueLabel.text = [NSString stringWithFormat:@"value = %f",[ud floatForKey:@"key_01"]];

    NSLog(@"value = %@",self.valueLabel.text);
    
    completionHandler(NCUpdateResultNewData);
}

//左の余白を消す
- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    return UIEdgeInsetsZero;
}

- (IBAction)goapppushed:(id)sender {
    [self.extensionContext openURL:@"myfirsttoday_goapp://" completionHandler:nil];
    
}
@end

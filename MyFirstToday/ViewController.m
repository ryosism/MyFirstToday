//
//  ViewController.m
//  MyFirstToday
//
//  Created by 祖父江亮 on 2016/08/23.
//  Copyright © 2016年 Ryo Sobue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.label.text = self.gettext;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (IBAction)buttonpushed:(id)sender {
    self.label.text = self.textbox.text;
    [self.view endEditing:YES];
    
    NSString* groupId = @"group.com.test.MyFirstToday";
    NSUserDefaults* ud = [[NSUserDefaults alloc] initWithSuiteName:groupId];
    
    [ud setFloat:self.label.text.floatValue forKey:@"key_01"];  // int型の100をKEY_Iというキーで保存

    [ud synchronize];  // NSUserDefaultsに即時反映させる（即時で無くてもよい場合は不要）
    
    NSLog(@"key_01 = %f",[ud floatForKey:@"key_01"]);
    
}
@end

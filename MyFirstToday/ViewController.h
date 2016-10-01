//
//  ViewController.h
//  MyFirstToday
//
//  Created by 祖父江亮 on 2016/08/23.
//  Copyright © 2016年 Ryo Sobue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textbox;
- (IBAction)buttonpushed:(id)sender;

@property (weak,nonatomic) NSString *gettext;

@end


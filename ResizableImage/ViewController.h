//
//  ViewController.h
//  ResizableImage
//
//  Created by Hiroki Kouchi on 12/07/02.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UISlider *sliderTop;
@property (weak, nonatomic) IBOutlet UISlider *sliderLeft;
@property (weak, nonatomic) IBOutlet UISlider *sliderBottom;
@property (weak, nonatomic) IBOutlet UISlider *sliderRight;

@end

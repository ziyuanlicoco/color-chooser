//
//  ViewController.m
//  Color Chooser
//
//  Created by Ziyuan Li on 2/19/20.
//  Copyright © 2020 Ziyuan Coco Li. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelColor;
@property (weak, nonatomic) IBOutlet UISlider *redOut;
@property (weak, nonatomic) IBOutlet UISlider *greenOut;
@property (weak, nonatomic) IBOutlet UISlider *blueOut;
@property (weak, nonatomic) IBOutlet UISlider *opOut;
@property (weak, nonatomic) IBOutlet UILabel *redColor;
@property (weak, nonatomic) IBOutlet UILabel *redColorHex;
@property (weak, nonatomic) IBOutlet UILabel *greenColor;
@property (weak, nonatomic) IBOutlet UILabel *greenColorHex;
@property (weak, nonatomic) IBOutlet UILabel *blueColor;
@property (weak, nonatomic) IBOutlet UILabel *blueColorHex;
@property (weak, nonatomic) IBOutlet UILabel *opColor;
@property (weak, nonatomic) IBOutlet UILabel *opColorHex;

@end

@implementation ViewController
- (IBAction)colorChooser:(id)sender {
}


- (IBAction)red:(id)sender {
    
    UISlider *myslider = (UISlider *) sender;
    int numToDisplay = (int) (myslider.value);
       
    
    
    NSString *displayNum = [[NSString alloc] initWithFormat:@"%d", numToDisplay];
      
    NSString *hexToDisplay =[NSString stringWithFormat:@"%02x", numToDisplay];
    
    self.redColor.text = displayNum;
    self.redColorHex.text = hexToDisplay;
      
    self.labelColor.backgroundColor =
       [UIColor colorWithRed:(numToDisplay/255.0) green:(_greenOut.value/255.0) blue:(_blueOut.value/255.0) alpha:(_opOut.value/255.0)];;

}



- (IBAction)green:(id)sender {
    UISlider *myslider = (UISlider *) sender;
    int numToDisplay = (int) (myslider.value);
       
    
    NSString *displayNum = [[NSString alloc] initWithFormat:@"%d", numToDisplay];
      
    NSString *hexToDisplay =[NSString stringWithFormat:@"%02x", numToDisplay];
    
    self.greenColor.text = displayNum;
    self.greenColorHex.text = hexToDisplay;
    
    self.labelColor.backgroundColor =
      [UIColor colorWithRed:(_redOut.value/255.0) green:(numToDisplay/255.0) blue:(_blueOut.value/255.0) alpha:(_opOut.value/255.0)];

}


- (IBAction)blue:(id)sender {
    UISlider *myslider = (UISlider *) sender;
    int numToDisplay = (int) (myslider.value);
       
    
    NSString *displayNum = [[NSString alloc] initWithFormat:@"%d", numToDisplay];
    NSString *hexToDisplay =[NSString stringWithFormat:@"%02x", numToDisplay];
    
      
    self.blueColor.text = displayNum;
    self.blueColorHex.text = hexToDisplay;
    
    self.labelColor.backgroundColor =
    [UIColor colorWithRed:(_redOut.value/255.0) green:(_greenOut.value/255.0) blue:(numToDisplay/255.0) alpha:(_opOut.value/255.0)];

}


- (IBAction)opacity:(id)sender {
    UISlider *myslider = (UISlider *) sender;
    int numToDisplay = (int) (myslider.value);
    
    NSString *displayNum = [[NSString alloc] initWithFormat:@"%d", numToDisplay];
    
    NSString *hexToDisplay =[NSString stringWithFormat:@"%02x", numToDisplay];
    
   
    self.opColor.text = displayNum;
    self.opColorHex.text = hexToDisplay;
   
    self.labelColor.backgroundColor =
    [UIColor colorWithRed:(_redOut.value/255.0) green:(_greenOut.value/255.0) blue:(_blueOut.value/255.0) alpha:(numToDisplay/255.0)];
    //[self.labelColor.backgroundColor colorWithAlphaComponent:(numToDisplay/255.0)];

    
   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    int random_red = arc4random_uniform(256);
    int random_blue = arc4random_uniform(256);
    int random_green = arc4random_uniform(256);
    
    self.labelColor.backgroundColor = [UIColor colorWithRed:(random_red/255.0) green:(random_green/255.0) blue:(random_blue/255.0) alpha:(255/255.0)];
    
    NSString *displayNum_red = [[NSString alloc] initWithFormat:@"%d", random_red];
    NSString *hexToDisplay_red =[NSString stringWithFormat:@"%02x", random_red];
    self.redColor.text = displayNum_red;
    self.redColorHex.text = hexToDisplay_red;
    self.redOut.value = (random_red);
    
    NSString *displayNum_green = [[NSString alloc] initWithFormat:@"%d", random_green];
    NSString *hexToDisplay_green =[NSString stringWithFormat:@"%02x", random_green];
    self.greenColor.text = displayNum_green;
    self.greenColorHex.text = hexToDisplay_green;
    self.greenOut.value = (random_green);
    
    NSString *displayNum_blue = [[NSString alloc] initWithFormat:@"%d", random_blue];
    NSString *hexToDisplay_blue =[NSString stringWithFormat:@"%02x", random_blue];
    self.blueColor.text = displayNum_blue;
    self.blueColorHex.text = hexToDisplay_blue;
    self.blueOut.value = (random_blue);
    
    self.opColor.text = @"255";
    NSString *hexToDisplay_op =[NSString stringWithFormat:@"%02x", 255];
    self.opColorHex.text = hexToDisplay_op;
    self.opOut.value = (255);
    
}


@end

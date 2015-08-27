//
//  ViewController.m
//  PhotoGallery
//
//  Created by Sachin Patil on 24/08/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import "ViewController.h"
#include "ControlHeader.h"
#import "horizontalTableViewCell.h"

@interface ViewController ()
@property (nonatomic,strong) NSMutableData* jsonData;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
    NSString *url_Img1 = @"http://192.168.10.104/imageData.php";
    NSString *url_Img2 = @"image.jpg";
    
    NSString *url_Img_FULL = [url_Img1 stringByAppendingPathComponent:url_Img2];
    
    NSLog(@"Show url_Img_FULL: %@",url_Img_FULL);
    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:url_Img_FULL]]];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
   
    
    return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

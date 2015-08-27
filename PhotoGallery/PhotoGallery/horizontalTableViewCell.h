//
//  horizontalTableViewCell.h
//  PhotoGallery
//
//  Created by cuelogic on 27/08/15.
//  Copyright (c) 2015 Cuelogic Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface horizontalTableViewCell : UITableViewCell<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *_horizontalTableView;
    NSArray *_articles;
}

@property (nonatomic, retain) UITableView *horizontalTableView;
@property (nonatomic, retain) NSArray *articles;

@end

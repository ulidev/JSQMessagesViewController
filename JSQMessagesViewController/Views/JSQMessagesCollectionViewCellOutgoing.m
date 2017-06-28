//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesCollectionViewCellOutgoing.h"

@interface JSQMessagesCollectionViewCellOutgoing ()
@property (weak, nonatomic) IBOutlet UIImageView *stateImage;

@end

@implementation JSQMessagesCollectionViewCellOutgoing

#pragma mark - Overrides

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.messageBubbleTopLabel.textAlignment = NSTextAlignmentRight;
    self.cellBottomLabel.textAlignment = NSTextAlignmentRight;
}

- (void)setCellState:(OutgoingCellState)cellState {
    _cellState = cellState;
    switch (_cellState) {
        case OutgoingCellStateSended:
            [self.stateImage setImage:[[UIImage imageNamed:@"double_check"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
            break;
        case OutgoingCellStateSending:
            [self.stateImage setImage:[[UIImage imageNamed:@"one_check"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
            break;
        case OutgoingCellStateWaiting:
            [self.stateImage setImage:[[UIImage imageNamed:@"clock"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
            break;
        default:
            break;
    }
    self.stateImage.tintColor = [UIColor grayColor];
}

@end

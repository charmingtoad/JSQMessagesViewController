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

#import "UIImage+JSQMessages.h"

#import "NSBundle+JSQMessages.h"


@implementation UIImage (JSQMessages)

- (UIImage *)jsq_imageMaskedWithColor:(UIColor *)maskColor
{
    NSParameterAssert(maskColor != nil);
    
    CGRect imageRect = CGRectMake(0.0f, 0.0f, self.size.width, self.size.height);
    UIImage *newImage = nil;
    
    UIGraphicsBeginImageContextWithOptions(imageRect.size, NO, self.scale);
    {
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextScaleCTM(context, 1.0f, -1.0f);
        CGContextTranslateCTM(context, 0.0f, -(imageRect.size.height));
        
        CGContextClipToMask(context, imageRect, self.CGImage);
        CGContextSetFillColorWithColor(context, maskColor.CGColor);
        CGContextFillRect(context, imageRect);
        
        newImage = UIGraphicsGetImageFromCurrentImageContext();
    }
    UIGraphicsEndImageContext();
    
    return newImage;
}

+ (UIImage *)jsq_bubbleImageFromBundleWithName:(NSString *)name
{
    NSBundle *bundle = [NSBundle jsq_messagesAssetBundle];
    NSString *path = [bundle pathForResource:name ofType:@"png" inDirectory:@"Images"];
    return [UIImage imageWithContentsOfFile:path];
}

+ (UIImage *)jsq_bubbleRegularImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"bubble_regular"];
}

+ (UIImage *)jsq_bubbleRegularTaillessImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"bubble_tailless"];
}

+ (UIImage *)jsq_bubbleRegularStrokedImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"bubble_stroked"];
}

+ (UIImage *)jsq_bubbleRegularStrokedTaillessImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"bubble_stroked_tailless"];
}

+ (UIImage *)jsq_bubbleCompactImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"bubble_min"];
}

+ (UIImage *)jsq_bubbleCompactTaillessImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"bubble_min_tailless"];
}

+ (UIImage *)jsq_defaultAccessoryImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"clip"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage0
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-0"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage1
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-1"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage2
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-2"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage3
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-3"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage4
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-4"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage5
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-5"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage6
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-6"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage7
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-7"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage8
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-8"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage9
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-9"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage10
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-10"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage11
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-11"];
}

+ (UIImage *)jsq_defaultTypingIndicatorImage12
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"typing-12"];
}

+ (UIImage *)jsq_defaultPlayImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"play"];
}

+ (UIImage *)jsq_defaultPauseImage
{
    return [UIImage jsq_bubbleImageFromBundleWithName:@"pause"];
}

@end

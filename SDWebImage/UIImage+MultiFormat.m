/*
 * This file is part of the SDWebImage package.
 * (c) Olivier Poitrey <rs@dailymotion.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#import "UIImage+MultiFormat.h"
#import "SDWebImageCodersManager.h"

@implementation UIImage (MultiFormat)

+ (nullable UIImage *)sd_imageWithData:(nullable NSData *)data {
    return [[SDWebImageCodersManager sharedManager] decodedImageWithData:data options:nil];
}

- (nullable NSData *)sd_imageData {
    return [self sd_imageDataAsFormat:SDImageFormatUndefined];
}

- (nullable NSData *)sd_imageDataAsFormat:(SDImageFormat)imageFormat {
    NSData *imageData = nil;
    if (self) {
        imageData = [[SDWebImageCodersManager sharedManager] encodedDataWithImage:self format:imageFormat options:nil];
    }
    return imageData;
}


@end

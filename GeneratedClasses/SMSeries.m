/*
 SMSeries.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2014-05-13.
 Copyright (c) 2014 CHIP, Boston Children's Hospital
 
 This library is free software; you can redistribute it and/or
 modify it under the terms of the GNU Lesser General Public
 License as published by the Free Software Foundation; either
 version 2.1 of the License, or (at your option) any later version.
 
 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 Lesser General Public License for more details.
 
 You should have received a copy of the GNU Lesser General Public
 License along with this library; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */

#import "SMSeries.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMSeries


#pragma mark - Synthesized Lazy Getter
@synthesize images = _images;

- (NSArray *)images
{
	if (!_images) {
		
		// get the "images" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#images"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMImagesList *newItem = [SMImagesList newWithSubject:rslt.object inModel:self.inModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		_images = [arr copy];
	}
	return _images;
}

- (void)setImages:(NSArray *)images
{
	if (images != _images) {
		RedlandNode *predicate = (images || _images) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#images"] : nil;
		if (_images) {
			for (SMImagesList *item in _images) {
				[self.inModel removeSubmodel:item.model];
			}
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_images = [images copy];
		
		if (_images) {
			for (SMImagesList *item in _images) {
				[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:item.subject]];
				[self.inModel addSubmodel:item.model];
			}
		}
	}
}

@synthesize modality = _modality;

- (SMCodedValue *)modality
{
	if (!_modality) {
		
		// get the "modality" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#modality"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMCodedValue *obj = [SMCodedValue newWithSubject:rslt.object inModel:self.inModel];
		_modality = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _modality) {
		return nil;
	}
	
	return _modality;
}

- (void)setModality:(SMCodedValue *)modality
{
	if (modality != _modality) {
		RedlandNode *predicate = (modality || _modality) ? [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#modality"] : nil;
		if (_modality) {
			[self.inModel removeSubmodel:_modality.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_modality = modality;
		
		if (_modality) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_modality.subject]];
			[self.inModel addSubmodel:_modality.model];
		}
	}
}

@synthesize title = _title;

- (NSString *)title
{
	if (!_title) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/title"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_title = [rslt.object literalValue];
	}
	return _title;
}

- (void)setTitle:(NSString *)title
{
	if (title != _title) {
		RedlandNode *predicate = (title || _title) ? [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/title"] : nil;
		if (_title) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_title = [title copy];
		
		if (_title) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_title nodeValue]]];
		}
	}
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#Series";
}




@end

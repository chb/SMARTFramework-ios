/*
 SMDocument.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-02-20.
 Copyright (c) 2013 CHIP, Boston Children's Hospital
 
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

#import "SMDocument.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMDocument


#pragma mark - Synthesized Lazy Getter
- (SMMedicalRecord *)belongsTo
{
	if (!_belongsTo) {
		
		// get the "belongsTo" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#belongsTo"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMMedicalRecord *obj = [SMMedicalRecord newWithSubject:rslt.object inModel:self.model];
		self.belongsTo = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _belongsTo) {
		return nil;
	}
	
	return _belongsTo;
}

- (NSArray *)classification
{
	if (!_classification) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#classification"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			NSString *newItem = [rslt.object literalValue];		// only works for NSString for now
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.classification = arr;
	}
	return _classification;
}

- (NSString *)date
{
	if (!_date) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/date"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.date = [rslt.object literalValue];
	}
	return _date;
}

- (NSString *)fileName
{
	if (!_fileName) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#fileName"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.fileName = [rslt.object literalValue];
	}
	return _fileName;
}

- (NSArray *)fileSize
{
	if (!_fileSize) {
		
		// get the "fileSize" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#fileSize"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMValueAndUnit *newItem = [SMValueAndUnit newWithSubject:rslt.object inModel:self.model];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.fileSize = arr;
	}
	return _fileSize;
}

- (NSArray *)hasFormat
{
	if (!_hasFormat) {
		
		// get the "hasFormat" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/hasFormat"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMDocumentWithFormat *newItem = [SMDocumentWithFormat newWithSubject:rslt.object inModel:self.model];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.hasFormat = arr;
	}
	return _hasFormat;
}

- (SMProvider *)provider
{
	if (!_provider) {
		
		// get the "provider" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#provider"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMProvider *obj = [SMProvider newWithSubject:rslt.object inModel:self.model];
		self.provider = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _provider) {
		return nil;
	}
	
	return _provider;
}

- (NSArray *)resource
{
	if (!_resource) {
		
		// get the "resource" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://smartplatforms.org/terms#resource"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMResource *newItem = [SMResource newWithSubject:rslt.object inModel:self.model];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		self.resource = arr;
	}
	return _resource;
}

- (NSString *)title
{
	if (!_title) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://purl.org/dc/terms/title"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.model enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		self.title = [rslt.object literalValue];
	}
	return _title;
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://smartplatforms.org/terms#Document";
}

+ (NSString *)basePath
{
	return @"/records/{record_id}/documents/{uuid}";
}


@end

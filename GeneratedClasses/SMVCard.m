/*
 SMVCard.m
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2013-06-14.
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

#import "SMVCard.h"
#import "SMARTObjects.h"

#import <Redland-ObjC.h>


@implementation SMVCard


#pragma mark - Synthesized Lazy Getter
@synthesize adr = _adr;

- (NSArray *)adr
{
	if (!_adr) {
		
		// get the "adr" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#adr"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMAddress *newItem = [SMAddress newWithSubject:rslt.object inModel:self.inModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		_adr = [arr copy];
	}
	return _adr;
}

- (void)setAdr:(NSArray *)adr
{
	if (adr != _adr) {
		RedlandNode *predicate = (adr || _adr) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#adr"] : nil;
		if (_adr) {
			for (SMAddress *item in _adr) {
				[self.inModel removeSubmodel:item.model];
			}
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_adr = [adr copy];
		
		if (_adr) {
			for (SMAddress *item in _adr) {
				[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:item.subject]];
				[self.inModel addSubmodel:item.model];
			}
		}
	}
}

@synthesize bday = _bday;

- (NSString *)bday
{
	if (!_bday) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#bday"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_bday = [rslt.object literalValue];
	}
	return _bday;
}

- (void)setBday:(NSString *)bday
{
	if (bday != _bday) {
		RedlandNode *predicate = (bday || _bday) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#bday"] : nil;
		if (_bday) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_bday = [bday copy];
		
		if (_bday) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_bday nodeValue]]];
		}
	}
}

@synthesize deathdate = _deathdate;

- (NSString *)deathdate
{
	if (!_deathdate) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#deathdate"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		RedlandStatement *rslt = [query nextObject];
		_deathdate = [rslt.object literalValue];
	}
	return _deathdate;
}

- (void)setDeathdate:(NSString *)deathdate
{
	if (deathdate != _deathdate) {
		RedlandNode *predicate = (deathdate || _deathdate) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#deathdate"] : nil;
		if (_deathdate) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_deathdate = [deathdate copy];
		
		if (_deathdate) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[_deathdate nodeValue]]];
		}
	}
}

@synthesize email = _email;

- (NSArray *)email
{
	if (!_email) {
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#email"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		// loop results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			NSString *newItem = [rslt.object literalValue];		// only works for NSString for now
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		_email = [arr copy];
	}
	return _email;
}

- (void)setEmail:(NSArray *)email
{
	if (email != _email) {
		RedlandNode *predicate = (email || _email) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#email"] : nil;
		if (_email) {
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_email = [email copy];
		
		if (_email) {
			for (NSString *newItem in _email) {
				[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:[newItem nodeValue]]];
			}
		}
	}
}

@synthesize n = _n;

- (SMName *)n
{
	if (!_n) {
		
		// get the "n" element
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#n"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		RedlandStatement *rslt = [query nextObject];
		
		// create an item for this object
		SMName *obj = [SMName newWithSubject:rslt.object inModel:self.inModel];
		_n = obj ? obj : (id)[NSNull null];
	}
	
	// we use NSNull as a placeholder in case we already searched the graph and haven't found the object. This should help with performance.
	if ((id)[NSNull null] == _n) {
		return nil;
	}
	
	return _n;
}

- (void)setN:(SMName *)n
{
	if (n != _n) {
		RedlandNode *predicate = (n || _n) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#n"] : nil;
		if (_n) {
			[self.inModel removeSubmodel:_n.model];
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_n = n;
		
		if (_n) {
			[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:_n.subject]];
			[self.inModel addSubmodel:_n.model];
		}
	}
}

@synthesize tel = _tel;

- (NSArray *)tel
{
	if (!_tel) {
		
		// get the "tel" elements
		RedlandNode *predicate = [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#tel"];
		RedlandStatement *statement = [RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil];
		RedlandStreamEnumerator *query = [self.inModel enumeratorOfStatementsLike:statement];
		
		// loop through the results
		NSMutableArray *arr = [NSMutableArray array];
		RedlandStatement *rslt = nil;
		while ((rslt = [query nextObject])) {
			
			// instantiate an item for each object
			SMTel *newItem = [SMTel newWithSubject:rslt.object inModel:self.inModel];
			if (newItem) {
				[arr addObject:newItem];
			}
		}
		_tel = [arr copy];
	}
	return _tel;
}

- (void)setTel:(NSArray *)tel
{
	if (tel != _tel) {
		RedlandNode *predicate = (tel || _tel) ? [RedlandNode nodeWithURIString:@"http://www.w3.org/2006/vcard/ns#tel"] : nil;
		if (_tel) {
			for (SMTel *item in _tel) {
				[self.inModel removeSubmodel:item.model];
			}
			[self.inModel removeStatementsLike:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:nil]];
		}
		
		_tel = [tel copy];
		
		if (_tel) {
			for (SMTel *item in _tel) {
				[self.inModel addStatement:[RedlandStatement statementWithSubject:self.subject predicate:predicate object:item.subject]];
				[self.inModel addSubmodel:item.model];
			}
		}
	}
}



#pragma mark - Class Properties
+ (NSString *)rdfType
{
	return @"http://www.w3.org/2006/vcard/ns#VCard";
}




@end

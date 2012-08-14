/*
 SMRecord.h
 SMARTFramework

 Created by Pascal Pfiffner on 8/3/12.
 Copyright (c) 2012 Harvard Medical School. All rights reserved.
 
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

#import <Foundation/Foundation.h>
#import "SMART.h"

@class SMServer;


/**
 *	Represents a SMART record on a SMART server
 */
@interface SMRecord : NSObject

@property (nonatomic, copy) NSString *uuid;							///< The record id

@property (nonatomic, weak) SMServer *server;						///< The server this record lives on
@property (nonatomic, copy) NSString *accessToken;					///< The OAuth token tied to this record and its server
@property (nonatomic, copy) NSString *accessTokenSecret;			///< The OAuth secret

@property (nonatomic, copy) NSString *name;							///< Composed name from givenName and familyName
@property (nonatomic, copy) NSString *givenName;					///< The patient's given name
@property (nonatomic, copy) NSString *familyName;					///< The patient's family name

- (id)initWithId:(NSString *)anId onServer:(SMServer *)aServer;

- (void)fetchRecordInfoWithCallback:(INCancelErrorBlock)callback;

// Utilities
- (BOOL)is:(NSString *)anId;


@end
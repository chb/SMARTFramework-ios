/*
 SMRecord+Calls.h
 SMARTFramework
 
 Generated by build-obj-c-classes.py on 2012-08-22.
 Copyright (c) 2012 CHIP, Boston Children's Hospital
 
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

#import "SMRecord.h"
#import "SMART.h"


/**
 *  A category on SMRecord, generated from smart.owl.
 */
@interface SMRecord(Calls)

- (void)getAllergies:(INSuccessRetvalueBlock)callback;
- (void)getClinicalNotes:(INSuccessRetvalueBlock)callback;
- (void)getDemographics:(INSuccessRetvalueBlock)callback;
- (void)getEncounters:(INSuccessRetvalueBlock)callback;
- (void)getFulfillments:(INSuccessRetvalueBlock)callback;
- (void)getImmunizations:(INSuccessRetvalueBlock)callback;
- (void)getLabPanel:(INSuccessRetvalueBlock)callback;
- (void)getLabPanels:(INSuccessRetvalueBlock)callback;
- (void)getLabResults:(INSuccessRetvalueBlock)callback;
- (void)getMedications:(INSuccessRetvalueBlock)callback;
- (void)getProblems:(INSuccessRetvalueBlock)callback;
- (void)getSocialHistory:(INSuccessRetvalueBlock)callback;
- (void)getVitalSignSets:(INSuccessRetvalueBlock)callback;


@end
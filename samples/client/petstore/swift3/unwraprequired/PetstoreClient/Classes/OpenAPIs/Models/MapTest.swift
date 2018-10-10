//
// MapTest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class MapTest: JSONEncodable {

    public enum MapOfEnumString: String {
        case upper = "UPPER"
        case lower = "lower"
    }
    public var mapMapOfString: [String:[String:String]]?
    public var mapOfEnumString: [String:String]?


    public init(mapMapOfString: [String:[String:String]]?=nil, mapOfEnumString: [String:String]?=nil) {
        self.mapMapOfString = mapMapOfString
        self.mapOfEnumString = mapOfEnumString
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["map_map_of_string"] = self.mapMapOfString?.encodeToJSON()//TODO: handle enum map scenario

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}


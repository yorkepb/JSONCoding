//
//  JSONCoding.swift
//  JSONCoding
//
//  Created by Jim Roepcke on 2016-11-27.
//  Copyright © 2016- Jim Roepcke.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to
//  deal in the Software without restriction, including without limitation the
//  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
//  IN THE SOFTWARE.
//

public typealias JSON = [String: Any]

public enum JSONError: Error {
    case missing(key: JSONKey)
    case null(key: JSONKey)
    case typeMismatch(key: JSONKey, expected: Any.Type, received: Any)
    case invalidJSONValue(key: JSONKey, received: Any)
    case expectedJSON(received: Any)
}

public protocol JSONCoding {
    static func _unarchived(with json: Any, unarchiver: JSONUnarchiving) throws -> Self
}

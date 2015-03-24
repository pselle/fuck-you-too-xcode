// Playground - noun: a place where people can play
// And get angry

import Cocoa

var someArray = []
//someArray.append("Cats")
// NSArray does not have a member named 'append'
// Why did it pick NSArray?

var noReallyAnFingArray : [Int] = []
noReallyAnFingArray.append(1)
println(noReallyAnFingArray)

var thisToo = [Int]()
thisToo.append(3)


// var someDictionary: [String:String] = []
// Swift thinks [] represents an array, not a dictionary

var someDictionary1 = [String:String]()

let someString = "Rawrg"
let someOtherString = ""
// someString.substringFromIndex(2)
// String.index does not conform to protocol IntegerLiteralConvertible
// What in the Sam Hill does that mean?

// Oh, you wanted to DO things with a string? Yeah, you want NSString.
// String doesn't inherit from that.
let guhPleaseAUsefulString = someString as NSString
guhPleaseAUsefulString.substringFromIndex(1)

/* From ye docs
Swift’s String type is bridged to Foundation’s NSString class. If you are working with the Foundation framework in Cocoa or Cocoa Touch, the entire NSString API is available to call on any String value you create when type cast to NSString, as described in AnyObject. You can also use a String value with any API that requires an NSString instance
*/


// Happy things: Tuples!
func gimmeTuples(i:String, j:String) -> (String, String) {
    return (i,j)
}
var definedI = ""
var definedJ = ""

(definedI, definedJ) = gimmeTuples("c","d")
definedI

// Happy things: GENERICS!

func gimmeWhateverTuples<T,U>(i:T, j:U) -> (T, U) {
    return (i,j)
}

let (q, z) = gimmeWhateverTuples(4, "unicorns")
let (k, p) = gimmeWhateverTuples([2,3,4,5], [4:0x00, 5:0x0A])
println(q)
println(z)
println(k)
println(p)
//
//p.dynamicType.Value
//The above code doesn't run. BUT it will tell you, in the error, what type your variable is'

// STRUCTS
// Things defined outside of init are accessible,
// things only defined inside init are not (scope)
struct SomeStruct {
    let bar = 1
    init() {
        let foo = bar + 1
    }
}

let s = SomeStruct()
s.bar
//s.foo // no can has!


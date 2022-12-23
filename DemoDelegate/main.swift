//
//  main.swift
//  DemoDelegate
//
//  Created by Sahid Reza on 22/12/22.
//

import Foundation


//
//protocol ResultDelegate{
//
//    func resltOfSumProcessing(result:Int)
//}
//
//class Manager: ResultDelegate {
//
//    var developer:Developer?
//
//    init(developer: Developer) {
//        self.developer = developer
//        developer.delegate = self
//    }
//
//    func twoNumberSum(a:Int,b:Int){
//
//       developer?.doingSum(x: a, y: b)
//
//    }
//
//    func resltOfSumProcessing(result:Int){
//        print("HEllo This the reslut",result)
//    }
//}
//
//class Developer{
//
//    var delegate:ResultDelegate?
//
//    func doingSum(x:Int,y:Int)  {
//
//        let sum = x + y
//        delegate?.resltOfSumProcessing(result: sum)
//
//    }
//
//
//
//
//}
//
//let ob1 = Manager(developer: Developer())
//ob1.twoNumberSum(a: 9, b: 9)

 //ANother Example

protocol AdvanceLifeSupport{
    func performCPR()
}

class EmergencyCallHanaler{

    var delegate:AdvanceLifeSupport?

    func assetTheSituation(){
        print("Call you tell me what happened")
    }

    func medicalEmergency(){
        delegate?.performCPR()
    }
}


struct Paramedic:AdvanceLifeSupport{

    init(handaler:EmergencyCallHanaler) {

        handaler.delegate = self
    }

    func performCPR() {
        print("The paramadic does chest compression,30 persecond")
    }


}

class Doctor:AdvanceLifeSupport{

    init(hanale:EmergencyCallHanaler){
        hanale.delegate = self
    }


    func performCPR() {
        print("The doctor does chest compression,30 persecond ")
    }

    func useStetescope(){
        print("Listenning per sound")
    }
}

class Surgon:Doctor {

    override func performCPR() {
        super.performCPR()
        print("Stay alive")
    }

    func useElectricDril(){
        print("wgitr.........")
    }
}


let emilio = EmergencyCallHanaler()
let pete = Paramedic(handaler: emilio)

emilio.assetTheSituation()
emilio.medicalEmergency()



//let emilio = EmergencyCallHanaler()
//let abu = Surgon(hanale: emilio)
//emilio.medicalEmergency()

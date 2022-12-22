//
//  main.swift
//  DemoDelegate
//
//  Created by Sahid Reza on 22/12/22.
//

import Foundation

protocol ResultDelegate{
    
    func resltOfSumProcessing(result:Int)
}

class Manager: ResultDelegate {

    var developer:Developer?

    init(developer: Developer) {
        self.developer = developer
        developer.delegate = self
    }

    func twoNumberSum(a:Int,b:Int){

       developer?.doingSum(x: a, y: b)

    }

    func resltOfSumProcessing(result:Int){
        print("HEllo This the reslut",result)
    }
}

class Developer{

    var delegate:ResultDelegate?

    func doingSum(x:Int,y:Int)  {

        let sum = x + y
        delegate?.resltOfSumProcessing(result: sum)

    }
    
    


}

let ob1 = Manager(developer: Developer())
ob1.twoNumberSum(a: 9, b: 9)





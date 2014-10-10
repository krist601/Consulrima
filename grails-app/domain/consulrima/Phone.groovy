package consulrima

class Phone {
    int areaCode
    int phoneNumber
    int type

    static belongsTo = [employee: Employee]
    static constraints = {
        type (nullable:true)
    }
    static createPhone(codeArea,phoneNumber,employeeId){
        def phone= new Phone()
        phone.areaCode=codeArea as int
        phone.phoneNumber=phoneNumber as int
        phone.type=1
        phone.employee=Employee.get(employeeId)
        phone.save(flush: true, failOnError:true)
    }
}

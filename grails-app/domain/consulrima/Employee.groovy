package consulrima

import java.util.Calendar

class Employee {
    static searchable = true
    String name
    String lastName
    int cedula
    String gender
    Date bornDate
    String address
    String email
    byte[] photo
    String observation
    Date admissionDate
    Date dischargeDate
    float salary
    String antiquityObservation
    String client
    String shirtSize
    String pantSize
    String shoesSize
    String employmentDataObservation
    List phone = new ArrayList()
    List advances
    List allocation
    List load
    static transients = ['age']

    String toString(){
        return "${name}"+' '+"${lastName}"
    }
    static hasMany = [phone: Phone,advances: Advances, allocation: Allocation, load: Load]
    static belongsTo = [occupation: Occupation]  
    static constraints = {
        photo(nullable:true,maxSize:1073741824)
        cedula unique: true
        email unique: true
        email nullable: true
        observation nullable: true
        dischargeDate nullable: true
        antiquityObservation nullable: true
        salary nullable: true
        employmentDataObservation nullable: true
        occupation nullable: true
        email email: true, blank: false
    }
    static mapping = {
        cascade: 'all-delete-orphan'
    }
    Integer getAge() {
     
        def birthYear = this.bornDate.getAt(Calendar.YEAR) 
        def birthMonth = this.bornDate.month
        def birthDayOfMonth = this.bornDate.day
        def now = new GregorianCalendar()
        def fake = new GregorianCalendar(now.get(Calendar.YEAR), birthMonth-1, birthDayOfMonth)
        return now.get(Calendar.YEAR) - birthYear - (fake > now ? 1 : 0)
    }
    static antiquityTimeToday(admission){
        def today=new Date()
        def monthBetween = (today[Calendar.MONTH] - admission[Calendar.MONTH]) // + 1
        def years=""
        def months=""
        def days=""
        if (monthBetween<0)
        monthBetween=12+monthBetween
        if(monthBetween==1)
        months=monthBetween+" mes "
        else if(monthBetween>1)   
        months=monthBetween+" meses "
        def yearsBetween = today[Calendar.YEAR] - admission[Calendar.YEAR]
        if(yearsBetween==1)
        years=yearsBetween+" año "
        else if(yearsBetween>1)   
        years=yearsBetween+" años "
        def daysBetween = (today[Calendar.DAY_OF_MONTH] - admission[Calendar.DAY_OF_MONTH])
        if(daysBetween==1)
        days=daysBetween+" día"
        else if(daysBetween>1)   
        days=daysBetween+" días"
        if((years=="")&&(days=="")&&(months==""))
        return "El empleado comenzó hoy"
        return years + months + days
    }
    
    static antiquityTimeDischargeDate(admission, discharge){
        def monthBetween = (discharge[Calendar.MONTH] - admission[Calendar.MONTH]) // + 1
        def years=""
        def months=""
        def days=""
        if (monthBetween<0)
        monthBetween=12+monthBetween
        if(monthBetween==1)
        months=monthBetween+" mes "
        else if(monthBetween>1)   
        months=monthBetween+" meses "
        def yearsBetween = discharge[Calendar.YEAR] - admission[Calendar.YEAR]
        if(yearsBetween==1)
        years=yearsBetween+" año "
        else if(yearsBetween>1)   
        years=yearsBetween+" años "
        def daysBetween = (discharge[Calendar.DAY_OF_MONTH] - admission[Calendar.DAY_OF_MONTH])
        if(daysBetween==1)
        days=daysBetween+" día"
        else if(daysBetween>1)   
        days=daysBetween+" días"
        if((years=="")&&(days=="")&&(months==""))
        return "El empleado ingresó hoy"
        return years + months + days
    }
    static getTotalLoadsNegative(employeeId){
        def load = Employee.executeQuery("SELECT sum(l.amount)*(-1) FROM Load as l WHERE l.amount<0 AND l.employee="+employeeId)
        if (load[0] == null) return 0
        return load[0]
    }
    static getTotalLoadsPositive(employeeId){
        def load = Employee.executeQuery("SELECT sum(l.amount) FROM Load as l WHERE l.amount>0 AND l.employee="+employeeId)
        if (load[0] == null) return 0
        return load[0]
    }
   
}

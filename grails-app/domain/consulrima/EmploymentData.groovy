package consulrima

class EmploymentData {
    String client
    String charge
    String shirtSize
    String pantSize
    String shoesSize
    Date FirstShirtEndowmentDate
    Date SecondShirtEndowmentDate
    Date FirstPantEndowmentDate
    Date SecondPantEndowmentDate
    Date FirstShoesEndowmentDate
    Date SecondShoestEndowmentDate
    Date FirstShirtEndowmentAmount
    Date SecondShirtEndowmentAmount
    Date FirstPantEndowmentAmount
    Date SecondPantEndowmentAmount
    Date FirstShoesEndowmentAmount
    Date SecondShoestEndowmentAmount

    static belongsTo = [employee: Employee]
    static constraints = {
    }
}
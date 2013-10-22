package lasmejores

class Sector {

    Integer idSector
    String nombre
    static hasMany = [empresas: Empresa]
    static constraints = {
    }
}

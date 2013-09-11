package ldh

class Projeto {

    String nome
    String descricao
    Date dataInicio

    static constraints = {
        nome       blank: false, unique: true
        descricao  nullable: true
        dataInicio blank: false
    }
}

# language: pt
Funcionalidade: Consulta comissões

  Cenário: empregado não existe
    Dado que eu acesse a página de consulta de comissões utilizando um id inexistente
    Então a página deve apresentar 'Empregado não encontrado!'

  Cenário: empregado existe mas não possui notas fiscais
    Dado que exista um empregado com id 1 e taxa de comissão de 0.15
    E que eu acesse a página de comissões utilizando o id 1
    Então a página deve apresentar 'Nenhuma comissão encontrada.'

  Cenário: empregado existe e possui notas fiscais
    Dado que exista um empregado com id 2 e taxa de comissão de 0.25
    E que o empregado com id 2 possua notas fiscais com os valores '100,200,300,400'
    E que eu acesse a página de comissões utilizando o id 2
    Então a página deve apresentar as comissões '25,50,75,100'

# Confident PS Spring Boot Application - Microservices and Web Engineering

## Projeto criado para a PS referente a aplicação do TheGoodBot pela N2020.

### Turma: 3SIT

### Integrantes do projeto:

|        Nome       |   RM   |
|-------------------|--------|
|Vinicius Felix     | 81247  |
|Lucas Barreto      | 80511  |
|Ysmar Victor       | 80196  |
|Vinicius Andrade   | 79937  |
|Jhoe Nascimento    | 81525  |

### Tecnologias
- [X] Gradle
- [X] Spring Boot
- [X] Spring Data JPA
- [X] Hibernate
- [X] Bean Validation
- [X] Oracle Driver

### Como rodar a aplicação:

O projeto está em formato MVC, portanto, é apenas necessário importar o projeto Gradle diretamente na IDE e alterar o ```appliaction.properties``` informando seu acesso para o usuário e senha referentes ao Oracle da FIAP nas propriedades: 
```
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
```

### Acessar a aplicação

O primeiro endpoint se encontra em ```localhost:8080/confident```.

O endpoint relacionado ao CRUD de bots se encontra em ```localhost:8080/confident/bots```.

O endpoint relacionado ao CRUD de segments se encontra em ```localhost:8080/confident/segments```.

_Obrigado!_

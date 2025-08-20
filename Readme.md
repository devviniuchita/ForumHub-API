# 🚀 ForumHub API

<div align="center">

![Java](https://img.shields.io/badge/Java-17-orange?style=for-the-badge&logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.4.8-green?style=for-the-badge&logo=spring)
![Spring Security](https://img.shields.io/badge/Spring%20Security-6-blue?style=for-the-badge&logo=spring)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)
![JWT](https://img.shields.io/badge/JWT-Authentication-yellow?style=for-the-badge&logo=jsonwebtokens)
![Maven](https://img.shields.io/badge/Maven-3.9.11-red?style=for-the-badge&logo=apache-maven)

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/devviniuchita)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/viniciusuchita/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:viniciusuchita@gmail.com)

**API RESTful para sistemas de fórum com autenticação JWT e controle de acesso baseado em roles**

</div>

---

## 📋 Índice

- [🎯 Sobre o Projeto](#-sobre-o-projeto)
- [✨ Funcionalidades](#-funcionalidades)
- [🏗️ Arquitetura](#️-arquitetura)
- [🛠️ Tecnologias](#️-tecnologias)
- [🚀 Como Executar](#-como-executar)
- [📚 Documentação da API](#-documentação-da-api)
- [🔐 Segurança](#-segurança)
- [🧪 Testes](#-testes)
- [📊 Estatísticas do Projeto](#-estatísticas-do-projeto)
- [👨‍💻 Autor](#-autor)
- [📄 Licença](#-licença)

---

## 🎯 Sobre o Projeto

O **ForumHub API** é uma aplicação backend robusta desenvolvida em **Spring Boot 3.4.8** que implementa um sistema completo de fórum com autenticação segura via **JWT** e controle de acesso baseado em roles (**USER** e **ADMIN**).

### 🎖️ Características Principais

- **🔐 Autenticação JWT** com expiração configurável (2 horas)
- **👥 Controle de Acesso** baseado em roles (USER e ADMIN)
- **✅ Validação Robusta** de dados com Bean Validation
- **🔄 CRUD Completo** de tópicos com permissões diferenciadas
- **🏗️ Clean Architecture** seguindo princípios SOLID
- **📊 Banco de Dados** MySQL 8.0 com JPA/Hibernate
- **🛡️ Spring Security 6** com configurações avançadas

---

## ✨ Funcionalidades

### 🔐 Autenticação e Autorização

- **Registro de usuários** com validação de dados
- **Login seguro** com geração de token JWT
- **Controle de acesso** baseado em roles
- **Sessões stateless** para alta performance

### 📝 Gestão de Tópicos

- **Criar tópicos** (requer autenticação USER/ADMIN)
- **Listar tópicos** (acesso público)
- **Atualizar tópicos** (apenas ADMIN)
- **Excluir tópicos** (apenas ADMIN)
- **Buscar por ID** com tratamento de erros

### 🛡️ Segurança

- **JWT com algoritmo HS256**
- **Senhas criptografadas** com BCrypt
- **CSRF desabilitado** para APIs stateless
- **Validação de entrada** em todos os endpoints

---

## 🏗️ Arquitetura

### Clean Architecture Implementation

```
src/
└── main/
    ├── java/com/forumhub/forumhubchallenge/
    │   ├── ForumhubchallengeApplication.java     # Entry Point
    │   ├── controller/                           # 🎮 Controllers Layer
    │   │   ├── AuthController.java              # Autenticação
    │   │   └── TopicosController.java           # CRUD Tópicos
    │   ├── service/                             # 🧠 Business Logic Layer
    │   │   ├── UsuarioService.java              # Lógica de Usuários
    │   │   └── TopicoService.java               # Lógica de Tópicos
    │   ├── repository/                          # 📦 Data Access Layer
    │   │   ├── UsuarioRepository.java           # Repository Usuários
    │   │   └── TopicoRepository.java            # Repository Tópicos
    │   ├── model/                               # 🏛️ Domain Layer
    │   │   ├── Usuario.java                     # Entidade Usuário
    │   │   └── Topico.java                      # Entidade Tópico
    │   ├── config/                              # ⚙️ Configuration Layer
    │   │   ├── SecurityConfig.java              # Configuração Security
    │   │   ├── SecurityFilter.java              # Filtro JWT
    │   │   ├── TokenService.java                # Serviço JWT
    │   │   └── KeyGenerator.java                # Geração de Chaves
    │   └── exception/                           # 🚨 Exception Handling
    │       ├── LoginDuplicadoException.java     # Exceção Customizada
    │       └── TratadorDeErros.java             # Global Exception Handler
    └── resources/
        └── application.properties               # Configurações
```

### Princípios SOLID Aplicados

- **S** - Single Responsibility: Cada classe tem uma responsabilidade específica
- **O** - Open/Closed: Extensível sem modificação via interfaces
- **L** - Liskov Substitution: Implementações substituíveis
- **I** - Interface Segregation: Interfaces específicas e coesas
- **D** - Dependency Inversion: Dependências via abstrações

---

## 🛠️ Tecnologias

### Backend

- **Java 17** - Linguagem principal
- **Spring Boot 3.4.8** - Framework principal
- **Spring Security 6** - Segurança e autenticação
- **Spring Data JPA** - Persistência de dados
- **Hibernate** - ORM

### Banco de Dados

- **MySQL 8.0** - Banco de dados principal
- **H2 Database** - Banco em memória para testes
- **Flyway** - Migração de banco de dados

### Autenticação e Segurança

- **JWT (JSON Web Tokens)** - Autenticação stateless
- **BCrypt** - Criptografia de senhas
- **JJWT 0.11.5** - Biblioteca JWT

### Build e Dependências

- **Maven 3.9.11** - Gerenciador de dependências
- **Lombok** - Redução de boilerplate
- **Bean Validation** - Validação de dados

### Ferramentas de Desenvolvimento

- **Spring DevTools** - Desenvolvimento acelerado
- **Starship** - Terminal otimizado
- **Zoxide** - Navegação de diretórios

---

## 🚀 Como Executar

### Pré-requisitos

- **Java 17** ou superior
- **Maven 3.9.11** ou superior
- **MySQL 8.0** (para produção)
- **Git** para clonar o repositório

### 1. Clone o Repositório

```bash
git clone https://github.com/devviniuchita/ForumHub_API.git
cd ForumHub_API
```

### 2. Configuração do Banco de Dados

#### Para Desenvolvimento (H2 - Banco em Memória)

```properties
# application.properties já configurado para H2
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=
spring.h2.console.enabled=true
spring.h2.console.path=/h2-console
```

#### Para Produção (MySQL)

```properties
# Configure as variáveis de ambiente
export DB_URL_MYSQL_HUB="jdbc:mysql://localhost:3306/forumhub_db"
export DB_USER_MYSQL="seu_usuario"
export DB_PASSWORD_MYSQL="sua_senha"
```

### 3. Executar a Aplicação

```bash
# Usando Maven Wrapper
./mvnw spring-boot:run

# Ou usando Maven diretamente
mvn spring-boot:run
```

### 4. Acessar a Aplicação

- **API Base URL**: `http://localhost:8080`
- **H2 Console**: `http://localhost:8080/h2-console` (apenas desenvolvimento)
- **Swagger UI**: `http://localhost:8080/swagger-ui.html` (se configurado)

---

## 📚 Documentação da API

### Endpoints de Autenticação

#### POST `/auth/register`

Registra um novo usuário.

```json
{
  "login": "usuario@exemplo.com",
  "senha": "senha123",
  "role": "USER"
}
```

**Resposta de Sucesso (200):**

```json
{
  "id": 1,
  "login": "usuario@exemplo.com",
  "role": "USER"
}
```

#### POST `/auth/login`

Realiza login e retorna token JWT.

```json
{
  "login": "usuario@exemplo.com",
  "senha": "senha123"
}
```

**Resposta de Sucesso (200):**

```json
{
  "tokenJWT": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
}
```

### Endpoints de Tópicos

#### GET `/topicos`

Lista todos os tópicos (acesso público).

**Headers:**

```
Authorization: Bearer {tokenJWT}
```

#### POST `/topicos`

Cria um novo tópico (requer autenticação USER/ADMIN).

```json
{
  "titulo": "Meu Primeiro Tópico",
  "mensagem": "Conteúdo do tópico com pelo menos 10 caracteres"
}
```

#### GET `/topicos/{id}`

Busca um tópico específico por ID.

#### PUT `/topicos/{id}`

Atualiza um tópico (apenas ADMIN).

#### DELETE `/topicos/{id}`

Exclui um tópico (apenas ADMIN).

---

## 🔐 Segurança

### JWT Configuration

- **Algoritmo**: HS256
- **Expiração**: 2 horas
- **Issuer**: "API ForumHub"
- **Claims**: username, authorities (roles)

### Roles e Permissões

- **USER**: Criar e visualizar tópicos
- **ADMIN**: Todas as operações (CRUD completo)

### Configurações de Segurança

- **CSRF**: Desabilitado (APIs stateless)
- **Sessions**: STATELESS
- **Password Encoding**: BCrypt
- **CORS**: Configurado para APIs

---

## 🧪 Testes

### Testes Automatizados

```bash
# Executar todos os testes
./mvnw test

# Executar testes com cobertura
./mvnw jacoco:report
```

### Testes Manuais via PowerShell

```powershell
# Script de teste completo disponível em test-api.ps1
.\test-api.ps1
```

### Endpoints de Teste

- **Health Check**: `GET /actuator/health`
- **Info**: `GET /actuator/info`

---

## 📊 Estatísticas do Projeto

<div align="center">

![Lines of Code](https://img.shields.io/badge/Lines%20of%20Code-607-blue?style=for-the-badge)
![Code Lines](https://img.shields.io/badge/Code%20Lines-480-green?style=for-the-badge)
![Java Files](https://img.shields.io/badge/Java%20Files-16-orange?style=for-the-badge)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.4.8-brightgreen?style=for-the-badge)

</div>

### Estrutura de Código

- **Total de Arquivos Java**: 16
- **Linhas Totais**: 607
- **Linhas de Código**: 480
- **Linhas de Comentário**: 127
- **Taxa de Cobertura**: >90%

### Padrões de Código

- **Clean Architecture**: ✅ Implementado
- **SOLID Principles**: ✅ Aplicados
- **Bean Validation**: ✅ Configurado
- **Exception Handling**: ✅ Global
- **Security Best Practices**: ✅ Implementadas

---

## 👨‍💻 Autor

<div align="center">

### Vinícius Uchita

[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/devviniuchita)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/viniciusuchita/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:viniciusuchita@gmail.com)

**📍 Localização**: São Paulo - SP, Brasil  
**💼 Perfil**: Desenvolvedor Backend Java/Spring Boot  
**🎯 Especialidades**: APIs RESTful, Spring Security, JWT, Clean Architecture

</div>

### Sobre o Desenvolvedor

Desenvolvedor backend apaixonado por criar soluções robustas e escaláveis. Especializado em **Java**, **Spring Boot** e **APIs RESTful**, com foco em **Clean Architecture** e **boas práticas de desenvolvimento**.

**🛠️ Stack Principal:**

- Java 17+ | Spring Boot 3.x | Spring Security
- MySQL | PostgreSQL | Redis
- Docker | Kubernetes | AWS
- Git | Maven | Gradle

**📚 Formação:**

- Desenvolvimento de Software
- Arquitetura de Sistemas
- Segurança de Aplicações

---

## 📄 Licença

Este projeto está sob a licença **MIT**. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

<div align="center">

**⭐ Se este projeto te ajudou, considere dar uma estrela!**

[![GitHub stars](https://img.shields.io/github/stars/devviniuchita/ForumHub_API?style=social)](https://github.com/devviniuchita/ForumHub_API/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/devviniuchita/ForumHub_API?style=social)](https://github.com/devviniuchita/ForumHub_API/network/members)
[![GitHub issues](https://img.shields.io/github/issues/devviniuchita/ForumHub_API)](https://github.com/devviniuchita/ForumHub_API/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/devviniuchita/ForumHub_API)](https://github.com/devviniuchita/ForumHub_API/pulls)

**🔄 Última atualização**: Janeiro 2025

</div>

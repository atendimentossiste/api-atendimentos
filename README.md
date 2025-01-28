# **API ATENDIMENTOS**

A API é responsável por gerenciar autenticação, dados de usuários, configurações de chat, histórico de mensagens e métricas do sistema. Ela fornece endpoints para operações de CRUD, processamento de mensagens e geração de respostas automáticas através de inteligência artificial.

---

# ENTIDADES

### Usuario
Um usuário representa a pessoa que irá usar o sistema.

### Atributos

- **id**: ID do usuário.
- **nome**: Nome do usuário.
- **email**: email do usuário.
- **senha**: senha do usuário.
- **numero**: Número de telefone do usuário.
- **tipo_de_envio**: (`"true"`, `"false"`).
- **created_at**: Registro do tempo em que foi criado um novo usuário.
- **updated_at**: Registro de tempo em que um usuário foi modificado.

### Endpoints
- **Listar todos os usuários**:<br>
  https://api-atendimentos.onrender.com/usuarios <br>
  **Método**: GET <br>
  Resposta esperada:
```bash
  {
    "id": 1
    "nome": "João",
    "email": "joao@gmail.com"
    "senha": "senhadojoao123"
    "numero": "1234567890",
    "tipo_de_envio": true
    "created_at": "2025-01-23T19:04:15.123Z"
    "updated_at": "2025-01-23T19:04:15.123Z"
  }
  {
    "id": 2
    "nome": "Roberto",
    "email": "robertp@gmail.com"
    "senha": "senhadoroberto123"
    "numero": "0987654321",
    "tipo_de_envio": true
    "created_at": "2025-01-23T19:11:28.321Z"
    "updated_at": "2025-01-23T19:11:28.321Z"
  }
```

- **Listar usuário por ID**:<br>
  https://api-atendimentos.onrender.com/usuarios/1 <br>
  **Método**: GET <br>
  Resposta esperada:
```bash
  {
    "id": 1
    "nome": "João",
    "email": "joao@gmail.com"
    "senha": "senhadojoao123"
    "numero": "1234567890",
    "tipo_de_envio": true
    "created_at": "2025-01-23T19:04:15.123Z"
    "updated_at": "2025-01-23T19:04:15.123Z"
  }
```
  
- **Criar usuários**: <br>
  https://api-atendimentos.onrender.com/usuarios <br>
  **Método**: POST
```bash
  {
    "nome": "João",
    "email": "joao@gmail.com"
    "senha": "senhadojoao123"
    "numero": "1234567890",
    "tipo_de_envio": true
  }
```

  Resposta esperada:
```bash
  {
    "id": 1
    "nome": "João",
    "email": "joao@gmail.com"
    "senha": "senhadojoao123"
    "numero": "1234567890",
    "tipo_de_envio": true
    "created_at": "2025-01-23T19:04:15.123Z"
    "updated_at": "2025-01-23T19:04:15.123Z"
  }
```
- **Atualizar usuário**: <br>
  https://api-atendimentos.onrender.com/usuarios/1 <br>
  **Método**: PUT <br>
  ```bash
  {
    "nome": "João Carlos",
    "email": "joaocarlos@gmail.com"
    "senha": "senhadojoao123"
    "numero": "1234567890",
    "tipo_de_envio": true
  }
  ```

Resposta esperada:
```bash
  {
    "nome": "João Carlos",
    "email": "joaocarlos@gmail.com"
    "senha": "senhadojoao123"
    "numero": "1234567890",
    "tipo_de_envio": true
    "created_at": "2025-01-23T19:04:15.123Z"
    "updated_at": "2025-01-23T19:22:59.455Z"
  }
```

- **Deletar usuário por ID**: <br>
  https://api-atendimentos.onrender.com/usuarios/1 <br>
  **Método**: DELETE <br>

Resposta esperada:

_No content ou  mensagem de sucesso._

### Chat Clientes
Clientes que irão usar o sistema de chat para entrar em contato com o serviço

### Atributos

- **id**: ID do chat_cliente.
- **nm_cliente**: Nome do cliente.
- **nr_cliente**: Número de telefone do cliente.
- **mensagem**: Mensagem enviada pelo cliente.
- **status_chat**: Verifica se o chat está aberto (`"true"`, `"false"`).
- **resposta_ia**: Resposta fornecida pela inteligência artificial.
- **created_at**: Registro do tempo em que foi criado um novo chat com cliente.
- **updated_at**: Registro de tempo em que um chat com cliente foi modificado.

### Endpoints
- **Listar todos os chat_clientes**:<br>
  https://api-atendimentos.onrender.com/chat_clientes <br>
  **Método**: GET <br>
  Resposta esperada:
```bash
  {
    "nm_cliente": "Maria",
    "nr_cliente": "123456789",
    "mensagem": "Olá, como posso ajudar?",
    "status_chat": true,
    "resposta_ia": "Estou aqui para ajudar!"
    "created_at": "2025-01-23T20:18:08.455Z"
    "updated_at": "2025-01-23T20:18:08.455Z"
  }
  {
    "id": 2
    "nome": "Renan",
    "numero": "987654321",
    "tipo_de_envio": true
    "created_at": "2025-01-23T20:31:01.734Z"
    "updated_at": "2025-01-23T20:31:01.734Z"
  }
```

- **Listar chat_cliente por ID**:<br>
  https://api-atendimentos.onrender.com/chat_clientes/1 <br>
  **Método**: GET <br>
  Resposta esperada:
```bash
  {
    "id": 1
    "nm_cliente": "Maria",
    "nr_cliente": "123456789",
    "mensagem": "Olá, como posso ajudar?",
    "status_chat": true,
    "resposta_ia": "Estou aqui para ajudar!"
    "created_at": "2025-01-23T20:18:08.455Z"
    "updated_at": "2025-01-23T20:18:08.455Z"
  }
```
  
- **Criar chat_cliente**: <br>
  https://api-atendimentos.onrender.com/chat_cliente <br>
  **Método**: POST
```bash
  {
    "nm_cliente": "Maria",
    "nr_cliente": "123456789",
    "mensagem": "Olá, como posso ajudar?",
    "status_chat": true,
    "resposta_ia": "Estou aqui para ajudar!"
  } 
```

  Resposta esperada:
```bash
  {
    "id": 1
    "nm_cliente": "Maria",
    "nr_cliente": "123456789",
    "mensagem": "Olá, como posso ajudar?",
    "status_chat": true,
    "resposta_ia": "Estou aqui para ajudar!"
    "created_at": "2025-01-23T20:18:08.455Z"
    "updated_at": "2025-01-23T20:18:08.455Z"
  }
```
- **Atualizar chat_clientes**: <br>
  https://api-atendimentos.onrender.com/chat_clientes/1 <br>
  **Método**: PUT <br>
  ```bash
  {
    "nm_cliente": "Maria da Silva",
    "nr_cliente": "123456789",
    "mensagem": "Olá, como posso ajudar?",
    "status_chat": true,
    "resposta_ia": "Estou aqui para ajudar!"
  } 
  ```

Resposta esperada:
```bash
  {
    "id": 1
    "nm_cliente": "Maria da Silva",
    "nr_cliente": "123456789",
    "mensagem": "Olá, como posso ajudar?",
    "status_chat": true,
    "resposta_ia": "Estou aqui para ajudar!"
    "created_at": "2025-01-23T20:18:08.455Z"
    "updated_at": "2025-01-23T20:29:43.923Z"
  }
```

- **Deletar chat_cliente por ID**: <br>
  https://api-atendimentos.onrender.com/chat_clientes/1 <br>
  **Método**: DELETE <br>

Resposta esperada:

_No content ou  mensagem de sucesso._

---

# **FUNCIONALIDADES DA API**

### **Autenticação**
- Registro de novos usuários
- Login
- Recuperação de senha

### **Gerenciamento de Usuários (CRUD)**
- **Criar Usuário** <br>
  **Método**: POST <br>
- **Consultar Usuário** <br>
  **Método**: GET <br>
- **Atualizar Usuário** <br>
  **Método**: PUT <br>
- **Deletar Usuário** <br>
  **Método**: DELETE <br>

### **Configurações do Chat**
  - **Atualizar Configurações** <br>
    Permite que o usuário altere preferências, como envio automático ou seleção de mensagens predefinidas. <br>
    **Método**: PUT <br>
    **Entrada**: ID do usuário, configurações desejadas. <br>
    **Saída**: Confirmação de atualização. <br>

### **Chat**
- **Iniciar Chat** <br>
Cria uma nova conversa com base no número do cliente.<br>
**Método**: POST<br>
**Entrada**: Número do cliente, nome do cliente. <br>
**Saída**: ID do chat, status inicial. <br>

- **Enviar Mensagem** <br>
Envia uma mensagem do cliente para a IA processar. <br>
**Método**: POST <br>
**Entrada**: ID do chat, mensagem do cliente. <br>
**Saída**: Resposta gerada pela IA, status atualizado. <br>

- **Finalizar Chat**<br>
Marca o chat como concluído.<br>
**Método**: PUT<br>
**Entrada**: ID do chat.<br>
**Saída**: Confirmação de finalização. <br>

---

# FLUXO DE RESPOSTA DA IA
**1**. Recebe a mensagem do cliente.<br>
**2**. Processa o conteúdo atravésde descrições fornecidas à IA.<br>
**3**. Retorna uma das mensagens predefinidas (baseada em configurações do usuário) ou uma resposta personalizada.<br>
**4**. Atualiza o status do chat com o progresso (ativo, finalizado).<br>

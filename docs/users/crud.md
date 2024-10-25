
# CRUD de Usuários

A API oferece endpoints para criar, consultar, atualizar e excluir usuários. Aqui estão os detalhes das operações suportadas.

## Listar Usuários

**GET** `/users/`

### Descrição
Esse endpoint permite listar usuários com suporte a paginação e filtros.

### Parâmetros de Consulta (Query Parameters)
- `nome` (string): Filtro opcional para listar usuários pelo nome.
- `page_size` (integer, obrigatório): Quantidade de registros por página, com valor padrão de 10.

### Exemplo de Requisição
```
GET /users/?nome=joao&page_size=10
```

### Exemplo de Resposta
```json
{
  "id": 1,
  "imagem_perfil": {},
  "last_login": "2024-10-24T10:30:00Z",
  "nome": "João da Silva",
  "telefone": "11999999999",
  "email": "joao.silva@example.com",
  "data_de_nascimento": "1990-01-01",
  "comissao": "10%",
  "oleos_favoritos": "óleo de coco",
  "id_instagram": "@joaodasilva",
  "pago_em": "2024-10-10",
  "usuario_administrador": true,
  "ativo": true,
  "hash_esquecimento_senha": "abc123",
  "expiracao_esquecimento_senha": "2024-10-30T10:30:00Z",
  "olya_id": "OLYA123",
  "pagarme_id": "PAGARME123",
  "genero": "masculino",
  "cadastrado_por": 2,
  "token_notification": "token123",
  "forgot_password_hash": "forgot123",
  "forgot_password_expire": "2024-10-30T10:30:00Z",
  "criado_em": "2024-01-01",
  "atualizado_em": "2024-01-02"
}
```

### Possíveis Respostas
- **200 OK**: Retorna a lista de usuários com paginação.
- **400 Bad Request**: Parâmetros de consulta inválidos.

## Criar Usuário

**POST** `/users/`

### Descrição
Esse endpoint permite criar novos usuários.

### Corpo da Requisição (Request Body)
- `olya_id` (string, opcional): ID do usuário no sistema Olya.
- `email` (string, obrigatório): Endereço de e-mail do usuário.
- `nome` (string, obrigatório): Nome completo do usuário.
- `password` (string, obrigatório): Senha para o novo usuário.
- `id_indicacao` (string, opcional): ID da indicação do usuário.

### Exemplo de Requisição
```json
{
  "olya_id": "OLYA123",
  "email": "joao.silva@example.com",
  "nome": "João da Silva",
  "password": "senhaSegura123",
  "id_indicacao": "INDICACAO123"
}
```

### Exemplo de Resposta
```json
{
  "id": 1,
  "imagem_perfil": {},
  "last_login": null,
  "nome": "João da Silva",
  "telefone": "11999999999",
  "email": "joao.silva@example.com",
  "data_de_nascimento": "1990-01-01",
  "comissao": "10%",
  "oleos_favoritos": "óleo de coco",
  "id_instagram": "@joaodasilva",
  "pago_em": "2024-10-10",
  "usuario_administrador": true,
  "ativo": true,
  "hash_esquecimento_senha": "abc123",
  "expiracao_esquecimento_senha": "2024-10-30T10:30:00Z",
  "olya_id": "OLYA123",
  "pagarme_id": "PAGARME123",
  "genero": "masculino",
  "cadastrado_por": 2,
  "token_notification": "token123",
  "forgot_password_hash": "forgot123",
  "forgot_password_expire": "2024-10-30T10:30:00Z",
  "criado_em": "2024-01-01",
  "atualizado_em": "2024-01-02"
}
```

### Possíveis Respostas
- **200 OK**: Usuário criado com sucesso.
- **400 Bad Request**: Dados de entrada inválidos.


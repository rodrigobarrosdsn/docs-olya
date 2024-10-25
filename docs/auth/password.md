# Gerenciamento de Senha

Esta seção descreve os endpoints relacionados ao gerenciamento de senha na API Olya, incluindo recuperação e alteração de senha.

## Esqueci Minha Senha

Inicia o processo de recuperação de senha enviando um email com instruções.

`POST /esqueci-senha/`

### Request Body
```json
{
    "email": "usuario@exemplo.com"
}
```

### Responses

#### Success Response (200 OK)
```json
{
    "message": "Email de recuperação enviado com sucesso"
}
```

#### Error Response (404 Not Found)
```json
{
    "error": "Email não encontrado"
}
```

## Alterar Senha Esquecida

Permite que o usuário defina uma nova senha usando o token de recuperação.

`POST /alterar-senha-esquecida/`

### Request Body
```json
{
    "token": "token-de-recuperacao",
    "nova_senha": "nova-senha123"
}
```

### Responses

#### Success Response (200 OK)
```json
{
    "message": "Senha alterada com sucesso"
}
```

#### Error Responses

##### Token Inválido (400 Bad Request)
```json
{
    "error": "Token inválido ou expirado"
}
```

## Validar Token de Recuperação

Verifica se um token de recuperação é válido.

`POST /validar-olyaid/`

### Request Body
```json
{
    "token": "token-de-recuperacao"
}
```

### Responses

#### Success Response (200 OK)
```json
{
    "valid": true
}
```

#### Error Response (400 Bad Request)
```json
{
    "valid": false,
    "error": "Token inválido ou expirado"
}
```

## Exemplos de Uso

### Solicitando Recuperação de Senha
```javascript
const forgotPassword = async (email) => {
  const response = await fetch('https://api.olya.com/esqueci-senha/', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({ email })
  });

  const data = await response.json();
  return data;
};
```



## Fluxo de Recuperação de Senha

1. Usuário solicita recuperação de senha fornecendo email
2. Sistema envia email com link contendo token de recuperação
3. Usuário clica no link e é redirecionado para página de redefinição
4. Sistema valida o token
5. Usuário define nova senha
6. Sistema confirma alteração e redireciona para login

## Notas de Segurança

1. Tokens de recuperação expiram após 1 hora
2. Tokens são de uso único
3. IP é registrado em todas as tentativas de recuperação
4. Múltiplas tentativas do mesmo IP podem resultar em bloqueio temporário
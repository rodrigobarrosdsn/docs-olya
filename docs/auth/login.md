# Login

O endpoint de login permite autenticação usando OLYA-ID ou email, retornando um token de acesso para uso nos demais endpoints.

## Endpoint de Login

`POST /auth/`

## Headers Necessários

```http
Content-Type: application/json
```

## Request Body

```json
{
    "olya_id": "OLY123456",  // Pode ser o OLYA-ID ou email
    "password": "sua-senha"
}
```

### Campos

| Campo | Tipo | Obrigatório | Descrição |
|-------|------|-------------|-----------|
| olya_id | string | Sim | OLYA-ID ou email do usuário |
| password | string | Sim | Senha do usuário |

## Responses

### Success Response (200 OK)

```json
{
    "token": "9944b09199c62bcf9418ad846dd0e4bbdfc6ee4b"
}
```

### Error Responses

#### Campos Faltando (400 Bad Request)
```json
{
    "detail": "Falta o parâmetro olya_id"
}
```
ou
```json
{
    "detail": "Falta o parâmetro password"
}
```

#### Credenciais Inválidas (400 Bad Request)
```json
{
    "detail": "OLYA-ID ou senha incorretos!"
}
```

## Exemplo de Uso

### Requisição usando cURL
```bash
curl -X POST https://api.olya.com/auth/ \
  -H "Content-Type: application/json" \
  -d '{"olya_id": "OLY123456", "password": "sua-senha"}'
```

### Requisição usando JavaScript
```javascript
const login = async (olyaId, password) => {
  const response = await fetch('https://api.olya.com/auth/', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      olya_id: olyaId,
      password: password
    })
  });

  const data = await response.json();
  if (!response.ok) {
    throw new Error(data.detail);
  }
  return data;
};
```

## Notas Importantes

1. O token retornado é persistente e não expira automaticamente
2. O mesmo usuário pode ter apenas um token ativo
3. O sistema aceita tanto OLYA-ID quanto email para autenticação
4. Use HTTPS para todas as requisições de autenticação
5. O sistema gera automaticamente um encurtador de URL para o token
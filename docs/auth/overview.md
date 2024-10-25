# Visão Geral da Autenticação

A API Olya utiliza um sistema de autenticação baseado em Token para garantir o acesso seguro aos endpoints. O sistema utiliza o Django REST Framework Authentication Token para gerenciar as sessões dos usuários.

## Fluxo de Autenticação

1. O usuário fornece suas credenciais (OLYA-ID/email e senha)
2. O servidor valida as credenciais
3. Se válidas, um token de acesso é gerado ou recuperado
4. O cliente deve incluir este token em todas as requisições subsequentes

## Headers de Autenticação

Para endpoints protegidos, inclua o token no header Authorization:

```http
Authorization: Token <seu-token>
```

## Endpoints Principais

| Endpoint | Método | Descrição |
|----------|---------|-----------|
| `/auth/` | POST | Autenticação inicial do usuário |
| `/esqueci-senha/` | POST | Solicita recuperação de senha |
| `/alterar-senha-esquecida/` | POST | Altera a senha após recuperação |

## Segurança

- Tokens não expiram automaticamente (são persistentes)
- Todas as senhas são hasheadas usando o sistema de hash do Django
- HTTPS é obrigatório para todas as requisições
- Sistema de encurtamento de URL para links seguros

## Boas Práticas

1. **Armazenamento Seguro**
   - Armazene o token de forma segura no cliente
   - Nunca exponha o token em URLs ou logs

2. **Gerenciamento de Sessão**
   - Implemente logout para invalidar tokens quando necessário
   - Mantenha apenas um token ativo por usuário

3. **Logout**
   - Remova o token do armazenamento local
   - Limpe quaisquer dados sensíveis armazenados
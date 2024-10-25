# Bem-vindo à Documentação da API Olya

## Visão Geral

A API Olya é uma API REST construída com Django REST Framework que fornece endpoints para gerenciar usuários, perfis, pagamentos e outras funcionalidades do ecossistema Olya.

## Principais Recursos

- **Autenticação**: Sistema seguro de autenticação de usuários
- **Gestão de Usuários**: CRUD completo de usuários e perfis
- **Pagamentos**: Integração com diversos métodos de pagamento (Cartão de Crédito, App Store)
- **Planos**: Gerenciamento de planos e assinaturas
- **Carteira**: Sistema de carteira digital com saques
- **Webhooks**: Integração com serviços externos (Google, Apple)

## Começando

Para começar a usar a API Olya, você precisará:

1. Obter suas credenciais de acesso
2. Entender o fluxo de autenticação
3. Conhecer os endpoints disponíveis

## Base URL

```
https://api.olya.com/
```

## Autenticação

A API usa autenticação baseada em token. Todos os endpoints autenticados esperam um token no header:

```http
Authorization: Token seu-token-aqui
```

## Formato das Respostas

Todas as respostas são retornadas no formato JSON.
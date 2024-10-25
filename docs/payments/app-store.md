# Pagamentos via App Store

A API Olya oferece suporte a pagamentos via App Stores, tanto para Google Play quanto Apple Store. Esta seção abrange a integração para gerenciamento de assinaturas e compras in-app.

## Gerenciamento de Assinaturas
A API trata eventos de renovação, cancelamento e alteração de planos através de notificações (webhooks) enviadas pelas respectivas lojas de aplicativos.

### Exemplo de Notificação de Renovação (Google Play)
```json
{
  "notificationType": 2,
  "subscriptionId": "com.example.app.subscription",
  "purchaseToken": "abcdefghij123456"
}
```


### Exemplo de Notificação de Renovação (Apple Store)
```json
{
  "notification_type": "DID_RENEW",
  "auto_renew_status": "true",
  "product_id": "com.example.app.subscription"
}
```
# Endpoints de Usuários

Aqui estão descritos os principais endpoints relacionados aos usuários na API do Olya.

## Autenticação de Usuário
- **Rota**: `/auth/`
- **Método**: POST
- **Descrição**: Endpoint para autenticar o usuário.

## CRUD de Usuários

### Listar Usuários
- **Rota**: `/usuarios/`
- **Método**: GET
- **Descrição**: Lista todos os usuários cadastrados.

### Detalhar Usuário
- **Rota**: `/usuarios/<int:usuario_id>/`
- **Método**: GET
- **Descrição**: Detalha um usuário específico pelo ID.

### Verificar OlyaID
- **Rota**: `/verificar-olyaid/`
- **Método**: POST
- **Descrição**: Verifica se um OlyaID é válido.

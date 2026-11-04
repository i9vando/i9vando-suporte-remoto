# Estado da entrega I9VANDO Suporte Remoto

## Preparado

- Base RustDesk OSS 1.5.1.
- RustDesk Server OSS 1.1.16 em Docker Compose.
- Nome e identidade I9VANDO no código.
- Paleta roxo/rosa aplicada à interface principal.
- Português do Brasil como idioma inicial.
- Fluxo padrão por ID e autorização clicando em **Aceitar**.
- Identificadores próprios Android, iOS e macOS.
- Pipeline multiplataforma preparado para GitHub Actions.
- Servidor RustDesk OSS 1.1.16 instalado e persistente no Ubuntu local.
- IP estático do servidor validado após reboot em `192.168.0.254`.
- aaPanel configurado em `https://192.168.0.254:1984/painel`.
- Chave pública do servidor incorporada ao código do cliente.
- Três novas artes oficiais preservadas no projeto.

## Bloqueios para gerar instaladores finais

- DNS `remoto.i9vando.com.br` ainda não existe.
- O repositório público AGPL ainda precisa ser autorizado/criado.
- macOS/iOS precisam de credenciais Apple para assinatura e distribuição sem alertas.
- Windows precisa de certificado de assinatura para reduzir alertas do SmartScreen.
- Android precisa de uma chave de assinatura própria antes de distribuição estável.
- Encaminhamento de portas no roteador e teste externo real ainda estão pendentes.

Antes da distribuição, executar `validate-i9vando-release.sh` e realizar uma conexão externa real.

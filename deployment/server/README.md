# Servidor I9VANDO Suporte Remoto

Backend RustDesk Server OSS 1.1.16, preparado para execução em Docker no Ubuntu/aaPanel.

## Requisitos mínimos

- Ubuntu x86_64 ou arm64 com Docker e Docker Compose v2.
- 2 vCPU, 2 GB de RAM e 10 GB livres para uma operação pequena/média.
- IP público alcançável ou encaminhamento de portas no roteador.
- DNS `remoto.i9vando.com.br` apontando para o IP público.
- TCP 21115, 21116, 21117, 21118 e 21119.
- UDP 21116.

O servidor local `192.168.0.138` pode ser usado, mas esse endereço privado não funciona para clientes fora da rede. O roteador deve encaminhar as portas externas para ele. Se o provedor usar CGNAT, será necessário solicitar IP público ou usar um VPS.

## Instalação controlada

1. Executar `./preflight.sh` e registrar o resultado.
2. Criar backup de qualquer instalação anterior.
3. Copiar `.env.example` para `.env` e confirmar o domínio.
4. Executar `docker compose pull` e `docker compose up -d`.
5. Confirmar os dois containers, portas e logs.
6. Guardar `data/id_ed25519` em backup seguro.
7. Copiar apenas `data/id_ed25519.pub` para a configuração de compilação dos clientes.
8. Testar conexão externa real antes da distribuição.

Nunca publicar `id_ed25519`. A chave `.pub` pode ser incluída nos aplicativos.

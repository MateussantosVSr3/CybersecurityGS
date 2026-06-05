# 🛡️ Space Code LTDA - Módulo de Cibersegurança

## 🚀 Descrição da Solução
Este repositório contém a implementação prática de segurança cibernética para o projeto Global Solution (Ecossistema Espacial). Como parte da estratégia de mitigação de riscos do nosso Datacenter Orbital, desenvolvemos um módulo automatizado de prevenção contra perda de dados sensíveis e ataques de Ransomware.

## 🛠️ Prática Escolhida: Script de Backup Automatizado
Para proteger os dados capturados pela nossa aplicação web (hospedada via IIS no Windows Server), foi criado um script em PowerShell que:
1. Localiza os dados críticos (`contato.json`) em ambiente de produção.
2. Executa a cópia de segurança isolando os arquivos em um diretório de custódia.
3. Carimba os arquivos com `timestamps` para controle de versionamento.
4. Gera e popula um arquivo de log de segurança (`security_backup.log`) para monitoramento e auditoria.

## ⚙️ Instruções Básicas de Execução
1. Certifique-se de que o ambiente possui o IIS configurado com o arquivo `C:\inetpub\wwwroot\contato.json`.
2. Crie um diretório de destino: `C:\Backups_SpaceCode`.
3. Execute o script `backup_spacecode.ps1` utilizando o PowerShell com privilégios de Administrador.
4. Verifique a pasta de destino para confirmar a integridade do arquivo gerado e do registro de log.

## 👥 Equipe
* Mateus dos Santos da Silva - RM 558436
* Andre Giovane de Maria - RM 556384
* Nickolas Moreno Cardoso - RM 557132

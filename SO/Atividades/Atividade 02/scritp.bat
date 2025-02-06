@echo off:: Desativa a exibição dos comandos no terminal para manter a saída limpa

:: Definição do caminho base na Área de Trabalho do usuário logado (melhor do que ficar repetindo)
set "BASE_DIR=%USERPROFILE%\Desktop\Usuarios"
set "PUBLIC_DIR=%USERPROFILE%\Desktop\Pasta_Pública"

:: Criando a pasta principal "Usuarios" e "Pasta_Pública" na área de trabalho. O operador "2>nul" suprime erros caso a pasta já exista, evitando mensagens desnecessárias
mkdir "%BASE_DIR%" 2>nul 
mkdir "%PUBLIC_DIR%" 2>nul

:: Loop para criar diretórios e arquivos para 4 usuários
for %%U in (1,2,3,4) do (
    :: Criando diretório para cada usuário
    set "USER_DIR=%BASE_DIR%\usuario%%U" :: Concatenando base com o número do usuário
    mkdir "%USER_DIR%" 2>nul

    :: Criando subdiretórios "Documentos" e "Downloads"
    mkdir "%USER_DIR%\Documentos" 2>nul
    mkdir "%USER_DIR%\Downloads" 2>nul

    :: Criando arquivo de informações no diretório "Documentos" e arquivo de dados no "Downloads"
    echo Informações do usuario%%U > "%USER_DIR%\Documentos\info.txt"
    echo Dados do usuario%%U > "%USER_DIR%\Downloads\dados.txt"

)

:: Exibir estrutura final no terminal
echo Estrutura de diretórios criada com sucesso:
tree "%BASE_DIR%" /F | more

:: Mensagem final
echo.
echo Organização de usuários concluída com sucesso!
pause

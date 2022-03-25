# IMD0509 - desenvolvimento para dispositivos móveis 

## Plataforma: Flutter 📱

Repositório com projetos da disciplina IMD0509 desenvolvimento para dispositivos móveis implementados na plataforma Flutter

## 1. Configuração do Ambiente 

### 1.1 Pré-requisitos

1. Instalar o Java. JDK 8 é recomendado: [Java 8](https://www.oracle.com/java/technologies/downloads/#jdk8-windows). Instalar também o [JRE 8](https://www.oracle.com/java/technologies/downloads/#jre8-windows).
2. Instalar a IDE Visual Studio Code: [VSCode](https://code.visualstudio.com)
 * Abrir o VSCode e instalar a Extensão: Flutter. 
3. **Usuário MacOS**: instalar, via AppStore, a ferramente XCode antes de ir para o passo 4. Usuários Linux e Windows, pular essa etapa.
4. Instalar o [Android Studio](https://developer.android.com/studio?hl=pt-br#downloads). 
  * Configurando Android Virtual Device (AVD): [Tutorial AVD.](https://github.com/jeanmmlima/flutter-guide/blob/main/docs/Tutorial%20AVD%20-%20Android%20Studio.pdf)
5. Instalar o Git via [instalador](https://git-scm.com/downloads) ou via terminal: 

- Ubuntu e Debian ```  $ apt-get install git ```
- MacOS ``` $ brew install git ```

### 1.2 Instalando Flutter

1. **Baixe o Flutter [aqui](https://docs.flutter.dev/get-started/install) de acordo com seu sistema operacional**. Atenção, é importante que você leia a documentação do flutter sobre a instalação, pois para cada sistema operacional há especificidades. De maneiral geral, quando selecionar o sistema operacional, você vai poder baixar o **Flutter SDK** (primero passo da opção *Get the Flutter SDK*) que vem em um arquivo .zip (windows e macos) ou tar.xz (linux). 
2. **Descompacte o Flutter (arquivo baixado) para um diretório de sua preferência e que não seja necessário permissão/privilégios de administrador**. Por exemplo: C:\Users\<nome-do-usuario>\Documents OU C:\development (OBS: diretório *development* criado dentro de C:). 
3. **Adicionar o Flutter a variável de ambiente *PATH***. Assim, os comandos do Flutter possam ser chamados de qualquer lugar. Essa operação varia de acordo com o sistema operacional. Mais uma vez, recomendo fortemente a leitura da documentção da instalação do Flutter para que você adicione o Flutter ao *PATH*. Aqui vamos explicar para o SO Windows:
  * (WINDOWS) Vá em Meu computador (clique com direito) --> Propriedades --> Configurações Avançadas do Sistema --> Variáveis de Ambiente. Selecione a variável *Path* e clique em *Editar...*. Na nova janela, clique em *Novo* e informe todo o caminho até o Flutter (onde você extraiu o arquivo baixado) seguindo do diretório bin: ``` c:\todo-caminho-ate-seu-diretorio-flutter\flutter\bin ```. Por exemplo, se você extraiu para a pasta C:\development, a informação que deve ser inserida em *Path* é: ```c:\development\flutter\bin```. Após inserir o caminho, clique em OK e OK para confirmar a operação. 
4. **Flutter Doctor**: com o Flutter devidamente inserio do *Path*, abra um novo terminal e execute o comando: 
 ```
 flutter doctor
 ```
*Flutter Doctor* vai relatar as pedência que ainda faltam na sua instalação e, dependendo da pendência, ele também te informa como resolver.  Mais uma vez, recomendo fortemente ler a docoumentação da instalação do Flutter. Para cada caso, o resultado do *Flutter Doctor* pode variar, mas há pendências comuns:
 * 4.1 Android Command Line tools: Baixe o *Command line tools* [aqui](https://developer.android.com/studio#downloads). Role a página até encontrar a opção *Command Line tools*. Quando baixar, descompacte o arquivo para dentro da pasta *sdk* que estará, por sua vez, dentro do diretório de instalação do Android Studio (```C:\caminho-ate-Android-Studio\Android\sdk```). 
 * 4.2 Android Licenses: Como sugerido pelo próprio *Flutter Doctor*, rode o comando: ```fluter doctor -android-licenses```.
 * 4.3 Flutter e Dart plugin não instalados: Abrir o Android Studio, na tela de "boas-vindas", clicar na opção *Plugin*. Buscar por *Flutter* e instalar o plugin. Buscar por *Dart* e instalar o plugin.
 * 4.4 (**MacOS**): Cocoapods: Instalar o cocoapods ```sudo gem install cocoapods``` OU (caso dê erro), instalar o *brew* e rodar os seguintes comandos: 1. ``` brew cleanup -d -v``` e 2. ```brew install cocoapods```. 
5. Execute ```flutter doctor``` mais uma vez e, com todas as pendências resolvidas (**No issues found!**), seu ambiente está pronto para desenvolver aplicativos **Flutter**! (Ufa! :sweat_smile:)

## 2. Crie um app em Flutter

Antes dessa etapa, certifique-se que seu ambiente está funcional para implementação de apps em Flutter. 
Em caso de dúvidas, ver o README.md desse repositório.

### 1. Execute um emulador 

#### 1.1 Usando Android Studio (Windows, Linux, MacOS)

1. Abra o Android Studio
2. Na tela de "boas-vindas", acesse o menu _More Actions_ e clique em **AVD Manager**.
3. Inicie o seu emulador previamente criado (clicar em _play_). 
4. Caso não tenha nenhum emulador configurado, leia o README.md deste repositório.

#### 1.2 Usando XCode (MacOS)

1. Abra um novo terminal
2. Rode o comando: ```open -a Simulator```
3. Em caso de dúvidas, consultar a [documentação](https://docs.flutter.dev/get-started/install/macos#set-up-the-ios-simulator) do Flutter para usar o sumulador iOS

### 2. Crie seu primero app

1. Abra um terminal e execute: ```flutter create meu_app```
2. Navegue até o diretório criado: ```cd meu_app```
3. Executar o comando: ```flutter run```

OBS: Para editar seu app, abra a pasta criada _meu_app_ no VSCode. O arquivo princiapl é o _main.dart_;


## 3. Executando Projetos do Repositório

1. Crie um projeto novo;
2. Baixe ou clone um projeto deste repositório. Mova os arquivos baixados para a pasta do novo projeto do passo 1. Você deve substituir todos os arquivos. Recomendo que você delete os arquivos do novo projeto criado e depois mova os arquivos baixados para dentro da pasta.
3. Quando mover os arquivos, acesse o diretório do projeto via terminal ou com o terminal do VSCode aberto no seu projeto. Utilize o comando ```flutter pub get``` para atualizar os pacotes de acordo com os arquivos baixados;

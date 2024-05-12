# Mapas

Este é um projeto em SwiftUI que utiliza a API de mapas da Apple para exibir uma lista de localizações e seus respectivos marcadores no mapa.

## Estrutura do Projeto

- **ContentView.swift**: Este é o arquivo principal que contém a interface principal da aplicação. Ele exibe um mapa com marcadores para cada localização e uma lista horizontal de botões para selecionar as localizações.
- **MapasApp.swift**: Arquivo responsável por definir o ponto de entrada da aplicação e inicializar a interface principal.
- **Mapa.swift**: Contém a definição da estrutura `Location` que representa uma localização no mapa.
- **Sheet.swift**: Arquivo de exemplo que define uma folha (sheet) de detalhes. Atualmente não está sendo utilizado na aplicação.

## Funcionalidades

- **Mapa Interativo**: Na tela principal, é exibido um mapa interativo com marcadores para cada localização. Ao clicar em um marcador, uma folha de detalhes é exibida.
- **Lista de Localizações**: Abaixo do mapa, há uma lista horizontal de botões que representam as diferentes localizações disponíveis. Ao clicar em um botão, o mapa é movido para exibir a localização correspondente.

## Como Usar

1. **Executando a Aplicação**: Abra o projeto no Xcode e execute-o em um simulador ou dispositivo iOS.
2. **Explorando o Mapa**: Na tela principal, você verá um mapa com marcadores para cada localização. Clique em um marcador para ver mais detalhes.
3. **Selecionando Localizações**: Abaixo do mapa, há uma lista de botões representando diferentes localizações. Clique em um botão para mover o mapa para a localização correspondente e ver seus detalhes.

## Observações

- Este é um projeto de exemplo e utiliza dados simulados para as localizações e detalhes.
- A folha de detalhes atualmente não está sendo utilizada na aplicação, mas pode ser personalizada conforme necessário.

Desfrute explorando o mapa e descobrindo novas localizações! 🗺️

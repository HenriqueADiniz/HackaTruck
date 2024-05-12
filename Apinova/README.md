# Desafio Aula 8 - API do Game of Thrones

Este é um aplicativo em SwiftUI que consome a API do Game of Thrones para exibir informações sobre personagens da série.

## Estrutura do Projeto

- **ViewModel.swift**: Contém a definição da estrutura `HaPo`, que representa um personagem de Game of Thrones, além da classe `ViewModel` responsável por fazer a requisição à API e armazenar os dados dos personagens.
- **ContentView.swift**: Interface principal da aplicação, exibindo uma lista de personagens com seus respectivos nomes e imagens.
- **CharView.swift**: Define a visualização de detalhes de um personagem, exibindo sua imagem, primeiro nome, sobrenome, nome completo e título.
- **ApinovaApp.swift**: Ponto de entrada da aplicação, responsável por inicializar a interface principal.

## Funcionalidades

- **Lista de Personagens**: Na tela principal, são exibidos os nomes e as imagens dos personagens de Game of Thrones. Ao clicar em um personagem, o usuário é direcionado para uma tela de detalhes.
- **Detalhes do Personagem**: Na tela de detalhes, são exibidas informações mais detalhadas sobre o personagem selecionado, incluindo seu primeiro nome, sobrenome, nome completo e título.

## Como Usar

1. **Executando a Aplicação**: Abra o projeto no Xcode e execute-o em um simulador ou dispositivo iOS.
2. **Explorando a Lista de Personagens**: Na tela principal, você verá uma lista de personagens do Game of Thrones com seus respectivos nomes e imagens. Clique em um personagem para ver mais detalhes.
3. **Visualizando os Detalhes do Personagem**: Na tela de detalhes, você verá informações mais detalhadas sobre o personagem selecionado, incluindo seu primeiro nome, sobrenome, nome completo e título.

## Observações

- Este é um projeto de exemplo e utiliza dados simulados da API do Game of Thrones para exibir informações sobre os personagens.
- As imagens dos personagens são carregadas de forma assíncrona e podem levar um tempo para serem exibidas, dependendo da velocidade da conexão com a internet.

Explore o mundo de intrigas e batalhas de Game of Thrones através deste aplicativo! 🐉🏰

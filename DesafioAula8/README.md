# Desafio Harry Potter

Este é um aplicativo em SwiftUI que consome a API do Harry Potter para exibir informações sobre personagens da série.

## Estrutura do Projeto

- **ViewModel.swift**: Contém a definição da estrutura `HaPo`, que representa um personagem do universo Harry Potter, além da classe `ViewModel` responsável por fazer a requisição à API e armazenar os dados dos personagens.
- **CharView.swift**: Define a visualização de detalhes de um personagem, exibindo sua imagem, casa, nome, data de nascimento, cor dos olhos, entre outras informações.
- **DesafioAula8App.swift**: Ponto de entrada da aplicação, responsável por inicializar a interface principal.
- **ContentView.swift**: Interface principal da aplicação, exibindo uma lista de personagens com seus respectivos nomes e imagens.

## Funcionalidades

- **Lista de Personagens**: Na tela principal, são exibidos os nomes e as imagens dos personagens. Ao clicar em um personagem, o usuário é direcionado para uma tela de detalhes.
- **Detalhes do Personagem**: Na tela de detalhes, são exibidas informações mais detalhadas sobre o personagem, incluindo sua casa, nome, data de nascimento e cor dos olhos.

## Como Usar

1. **Executando a Aplicação**: Abra o projeto no Xcode e execute-o em um simulador ou dispositivo iOS.
2. **Explorando a Lista de Personagens**: Na tela principal, você verá uma lista de personagens do Harry Potter com seus respectivos nomes e imagens. Clique em um personagem para ver mais detalhes.
3. **Visualizando os Detalhes do Personagem**: Na tela de detalhes, você verá informações mais detalhadas sobre o personagem selecionado, incluindo sua casa, nome, data de nascimento e cor dos olhos.

## Observações

- Este é um projeto de exemplo e utiliza dados simulados da API do Harry Potter para exibir informações sobre os personagens.
- As imagens dos personagens são carregadas de forma assíncrona e podem levar um tempo para serem exibidas, dependendo da velocidade da conexão com a internet.

Divirta-se explorando o universo mágico de Harry Potter! 🪄✨

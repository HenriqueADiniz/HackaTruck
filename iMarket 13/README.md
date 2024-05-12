iMarket
Projeto Final do HackaTruck MakerSpace

O iMarket é uma aplicação desenvolvida como parte do projeto HackaTruck MakerSpace, uma iniciativa itinerante de capacitação profissional tecnológica voltada para estudantes de Instituições de Ensino Superior de Tecnologia da Informação e áreas afins. O projeto oferece a oportunidade de aprender a desenvolver protótipos de aplicativos e soluções utilizando as tecnologias mais atuais, como linguagem de programação Swift, Internet das Coisas e serviços cognitivos em nuvem.

Desde 2015, o HackaTruck MakerSpace percorre o país com um laboratório móvel, inspirado pelo conceito maker, equipado com um makerspace para criar e desenvolver protótipos relacionados a diversos temas importantes para a sociedade, como saúde, educação, indústria 4.0, varejo, segurança, mobilidade urbana e sustentabilidade.

Problemas Resolvidos
O iMarket foi desenvolvido para resolver os seguintes problemas:

Localizar todos os produtos de mercado desejados em um único lugar.
Encontrar supermercados com melhor custo-benefício.
Pesquisar os mercados próximos facilmente.
Funcionalidades
O iMarket possui as seguintes funcionalidades:

Pesquisar os supermercados locais.
Selecionar categorias desejadas.
Escolher produtos desejados.
Calcular o preço total dos produtos selecionados.
Tecnologias Utilizadas
O iMarket foi desenvolvido utilizando as seguintes tecnologias:

Swift
SwiftUI
IBM Cloud
Node-RED
Estrutura do Projeto
O projeto está dividido em três pastas:

components: Contém os componentes reutilizáveis da interface do usuário.
dataBase: Contém os arquivos relacionados ao banco de dados.
views: Contém as views da aplicação.
Componentes Principais
CategoryCard.swift: Exibe uma categoria de produtos, incluindo uma imagem e o nome da categoria.
ProductBar.swift: Exibe um produto individual, incluindo uma imagem e o nome do produto.
ProductBarSelected.swift: Semelhante ao ProductBar, mas inclui a funcionalidade de selecionar a quantidade do produto.
ProductCard.swift: Exibe um produto de forma compacta, ideal para visualização em uma lista.
SearchBar.swift: Barra de pesquisa que permite ao usuário pesquisar produtos.
SupermercadoModel.swift: Lógica relacionada aos supermercados, incluindo busca de dados e cálculo de preços.
TextWrappedLayout.swift: Organiza uma lista de itens em um layout de grade.
Banco de Dados
CategoriasDB.swift: Definições das categorias de produtos disponíveis na aplicação.
LocationDB.swift: Definições de locais, incluindo coordenadas geográficas e informações de descrição.
ProdutosDB.swift: Definições dos produtos disponíveis na aplicação, incluindo nome, preço e categoria.
Funcionalidades Futuras
Integração com sistema de pagamento online.
Avaliações e comentários dos produtos pelos usuários.
Melhorias na interface do usuário para uma experiência mais intuitiva.

//
//  ProdutosDB.swift
//  iMarket
//
//  Created by Student09 on 13/06/23.
//

import Foundation


public struct SupermercadoCotacao: Codable {
    var nome: String?
    var logo: String?
    var produtos: [Produto]?
    var total : Double?
}




public struct Supermercado: Codable {
    
    var _id: String?
    var _rev: String?
    public var nome: String?
    var latitude: Double?
    var longitude: Double?
    var endereco: String?
    var logo: String?
    var produtos: [Produto]?
    var id : Int?
}

public struct Produto: Codable, Identifiable {
        
    public let id: Int
    let nome: String
    let preco: Double
    let categoria: String
}

public struct Produtos: Identifiable, Equatable {
    
    public let id: Int
    let nome: String
    var quantidade: Int
    let imagem: String
}

public let Arroz = Produtos(
    id:  1,
    nome: "Arroz",
    quantidade: 1,
    imagem: "https://s3-sa-east-1.amazonaws.com/superimg/img.produtos/7896006711117/img_1200_1.png"
)

public let Feijao = Produtos(
    id:  2,
    nome: "Feijão",
    quantidade: 1,
    imagem: "https://www.camil.com.br/wp-content/uploads/sites/12/2020/06/mkp-feijao-carioca-1kg-removebg-preview.png"
)

public let Pipoca = Produtos(
    id:  3,
    nome: "Pipoca",
    quantidade: 1,
    imagem: "https://redemachado.com.br/arquivos/256551.png"
)

public let Farinha = Produtos(
    id:  4,
    nome: "Farinha",
    quantidade: 1,
    imagem: "https://2ralimentos.com.br/wp-content/uploads/2022/01/foto_original1.png"
)

public let GraoDeBico = Produtos(
    id:  5,
    nome: "Grão de Bico",
    quantidade: 1,
    imagem: "https://redemachado.com.br/arquivos/226653.jpg"
)

public let Detergente = Produtos(
    id:  6,
    nome: "Detergente",
    quantidade: 1,
    imagem: "https://images.tcdn.com.br/img/img_prod/786433/detergente_ype_neutro_500ml_532291_1_b3e2b690c545893ac7b1b4e95f26b416.png"
)

public let Esponja = Produtos(
    id:  7,
    nome: "Esponja",
    quantidade: 1,
    imagem: "https://www.solucoesindustriais.com.br/images/produtos/imagens_10292/esponja-para-louca_10292_38743_30.png"
)

public let SabaoEmPo = Produtos(
    id:  8,
    nome: "Sabão em pó",
    quantidade: 1,
    imagem: "https://zontalimp.com.br/wp-content/uploads/2016/10/Brilhante.png"
)

public let AguaSanitaria = Produtos(
    id:  9,
    nome: "Água Sanitária",
    quantidade: 1,
    imagem: "https://medlimp.com.br/wp-content/uploads/2023/03/AGUA-SANITARIA-FACILITA-AUDAX-5L.png"
)

public let PapelToalha = Produtos(
    id: 10,
    nome: "Papel Toalha",
    quantidade: 1,
    imagem: "https://www.ripz.com.br/662/papel-toalha-de-cozinha-sulleg-12-un-com-2-rolos-de-120-folhas-cada.jpg"
)

public let Vodka = Produtos(
    id: 11,
    nome: "Vodka",
    quantidade: 1,
    imagem: "https://tb3743.vteximg.com.br/arquivos/ids/157730-1000-1000/563.jpg?v=637697309290600000"
)

public let Guarana = Produtos(
    id: 12,
    nome: "Guaraná",
    quantidade: 1,
    imagem: "https://bahiabeer.com.br/wp-content/uploads/2020/11/guarana_2l.png"
)

public let CocaCola = Produtos(
    id: 13,
    nome: "Coca Cola",
    quantidade: 1,
    imagem: "https://www.pngall.com/wp-content/uploads/2016/04/Coca-Cola-PNG-Clipart.png"
)

public let AguaComGas = Produtos(
    id: 14,
    nome: "Água com Gás",
    quantidade: 1,
    imagem: "https://s.cornershopapp.com/product-images/1266384.png?versionId=9Ae7TQdEQhoDsfedY4LjpeLpVggzWV0C"
)

public let Energetico = Produtos(
    id: 15,
    nome: "Energético",
    quantidade: 1,
    imagem: "https://adegabrooklin.com.br/wp-content/uploads/2022/11/Energetico-Monsterok.png"
)

public let Frango = Produtos(
    id: 16,
    nome: "Frango",
    quantidade: 1,
    imagem: "https://static.clubeextra.com.br/img/uploads/1/71/652071.png"
)

public let Picanha = Produtos(
    id: 17,
    nome: "Picanha",
    quantidade: 1,
    imagem: "https://superprix.vteximg.com.br/arquivos/ids/167888-600-600/Picanha-Bovina-Friboi-Maturatta-14kg.jpg?v=636093974440030000"
)

public let Lombo = Produtos(
    id: 18,
    nome: "Lombo",
    quantidade: 1,
    imagem: "https://danielialimentos.com.br/wp-content/uploads/2019/01/lombo-suino-resfriado.png"
)

public let Alcatra = Produtos(
    id: 19,
    nome: "Alcatra",
    quantidade: 1,
    imagem: "https://future-brand-frib.s3.amazonaws.com/coracao_alcatra_789846610001_dd89978b96.png"
)

public let Linguica = Produtos(
    id: 20,
    nome: "Linguiça",
    quantidade: 1,
    imagem: "https://pifpaf.com.br/wp-content/uploads/2022/05/AF-mkp-linguica-toscana-1kg.png"
)

public let Pao = Produtos(
    id: 21,
    nome: "Pão",
    quantidade: 1,
    imagem: "https://images.tcdn.com.br/img/img_prod/462274/sacos_para_pao_integral_com_foto_com_100_unidades_1492_1_20201026092755.jpg"
)

public let BoloDeLaranja = Produtos(
    id: 22,
    nome: "Bolo de Laranja",
    quantidade: 1,
    imagem: "https://depanes.com.br/img/bolos/download/bolo_laranja.png"
)

public let BoloDeCoco = Produtos(
    id: 23,
    nome: "Bolo de Coco",
    quantidade: 1,
    imagem: "https://giassi.vtexassets.com/arquivos/ids/623631/Bolo-Coco-Giassi-Kg.png?v=638186510349970000"
)

public let BoloDeFuba = Produtos(
    id: 24,
    nome: "Bolo de Fubá",
    quantidade: 1,
    imagem: "https://riosoftice.com.br/wp-content/uploads/2019/03/bolo-milho.png"
)

public let PaoDoce = Produtos(
    id: 25,
    nome: "Pão Doce",
    quantidade: 1,
    imagem: "https://baggiosupermercados.net.br/images/b94ee0f5-666f-41ec-9a02-7aec46f18180.png"
)

public let Leite = Produtos(
    id: 26,
    nome: "Leite",
    quantidade: 1,
    imagem: "https://laticiniosportoalegre.com.br/wp-content/uploads/2019/07/21033-MOCKUP-2019-NOVAS-EMBALAGENS-LEITE-INTEGRAL-1L_A03.jpg"
)

public let Iogurte = Produtos(
    id: 27,
    nome: "Iogurte",
    quantidade: 1,
    imagem: "https://ibassets.com.br/ib.item.image.big/b-fbd82462d90f46d6af570d4a2d784b16.jpeg"
)

public let Queijo = Produtos(
    id: 28,
    nome: "Queijo",
    quantidade: 1,
    imagem: "https://s.cornershopapp.com/product-images/2138597.png?versionId=9O1ejTgv0dhwOo_Xs9OwCfXTJSZN9jeo"
)

public let Requeijao = Produtos(
    id: 29,
    nome: "Requeijão",
    quantidade: 1,
    imagem: "https://superprix.vteximg.com.br/arquivos/ids/177194-600-600/Requeijao-Cremoso-Vigor-Tradicional-200g.png?v=636571526103870000"
)

public let Manteiga = Produtos(
    id: 30,
    nome: "Manteiga",
    quantidade: 1,
    imagem: "https://www.qualy.com.br/images/produtos/manteiga/image.png"
)

public let Couve = Produtos(
    id: 31,
    nome: "Couve",
    quantidade: 1,
    imagem: "https://bancadoedi.com.br/wp-content/uploads/2022/04/Couve-manteiga.jpg"
)

public let Alface = Produtos(
    id: 32,
    nome: "Alface",
    quantidade: 1,
    imagem: "https://www.sindafep.org.br/media/img_noticias/white-vegetable-healthy-fresh-natural.jpg"
)

public let Tomate = Produtos(
    id: 33,
    nome: "Tomate",
    quantidade: 1,
    imagem: "https://www.infoescola.com/wp-content/uploads/2011/01/tomate_345187874.jpg"
)

public let Chuchu = Produtos(
    id: 34,
    nome: "Chuchu",
    quantidade: 1,
    imagem: "https://www.galaxcommerce.com.br/sistema/upload/1994/produtos/chuchu_2020-04-16_13-14-03_1.jpg"
)

public let Batata = Produtos(
    id: 35,
    nome: "Batata",
    quantidade: 1,
    imagem: "https://static1.conquistesuavida.com.br/ingredients/5/54/52/05/@/24682--ingredient_detail_ingredient-2.png"
)

public let Doritos = Produtos(
    id: 36,
    nome: "Doritos",
    quantidade: 1,
    imagem: "https://s.cornershopapp.com/product-images/4498804.jpg?versionId=hgV_5nUujyuLY0kvfK5uGMNbp.laHB55"
)

public let Ruffles = Produtos(id: 37, nome: "Ruffles", quantidade: 1, imagem:"https://cdn.formulaexpress.com.br/img/p/7/7/2/772-thickbox_default.jpg")
public let Cheetos = Produtos(id: 38, nome: "Cheetos", quantidade: 1, imagem: "https://trimais.vteximg.com.br/arquivos/ids/1048935-1000-1000/foto_original.jpg?v=638174435652870000")
public let Lays = Produtos(id: 39, nome: "Lays", quantidade: 1, imagem:"https://www.pngmart.com/files/16/Lays-Chips-Transparent-PNG.png")
public let Fandangos = Produtos(id: 40, nome: "Fandangos", quantidade: 1, imagem: "https://trimais.vteximg.com.br/arquivos/ids/1011470-1000-1000/foto_original.jpg?v=637395863945030000")

public var selectedProducts : [Produtos] = []
public var quantidadeSelecionada: Int = 0

public func getPreco(idProcurado: Int, sup: Supermercado) -> Double {
    
    var produtoPreco = 0.0
    
    for p in sup.produtos! {
        
        if p.id == idProcurado {
            produtoPreco = p.preco
        }
    }
    
    return produtoPreco
}

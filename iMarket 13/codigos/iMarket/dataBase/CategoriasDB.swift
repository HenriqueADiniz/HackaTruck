//
//  CategoriasDB.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import Foundation
import SwiftUI

public struct Categoria {
    let nome: String
    let imagem: String
    let produtos: [Produtos]
}

public let Graos = Categoria(
    nome: "Grãos",
    imagem: "https://img.freepik.com/fotos-gratis/frutas-secas_1368-8569.jpg",
    produtos: [Arroz, Feijao, Pipoca, Farinha, GraoDeBico]
)

public let Limpeza = Categoria(
    nome: "Limpeza",
    imagem: "https://jornalgoias.com.br/wp-content/uploads/2020/07/Marca-Propria-Bretas-alimentos-780x405.png",
    produtos: [Detergente, Esponja, SabaoEmPo, AguaSanitaria, PapelToalha]
)

public let Bebidas = Categoria(
    nome: "Bebidas",
    imagem: "https://lh3.googleusercontent.com/p/AF1QipPGJHc8ucRAKLNdH07s56Z4SJ0-hmPZCyHWFEIe=w1080-h608-p-no-v0",
    produtos: [Vodka, Guarana, CocaCola, AguaComGas, Energetico]
)

public let Acougue = Categoria(
    nome: "Açougue",
    imagem: "https://us-southeast-1.linodeobjects.com/storage/unicooper/media/uploads/produto/carne_su_na_pernil_kg_d079e297-d380-4882-98c4-0006db12fb15.png",
    produtos: [Frango, Picanha, Lombo, Alcatra, Linguica]
)

public let Padaria = Categoria(
    nome: "Padaria",
    imagem: "https://giassi.vtexassets.com/arquivos/ids/618446/Pao-Frances-Giassi-Kg.png?v=638179461903430000",
    produtos: [Pao, BoloDeLaranja, BoloDeCoco, BoloDeFuba, PaoDoce]
)

public let Laticinios = Categoria(
    nome: "Laticínios",
    imagem: "https://cptstatic.s3.amazonaws.com/imagens/enviadas/materias/materia10723/Laticinios-01.jpg",
    produtos: [Leite, Iogurte, Queijo, Requeijao, Manteiga]
)

public let Sacolao = Categoria(
    nome: "Sacolão",
    imagem: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/as-frutas-sao-alimentos-importantes-para-nossa-saude-alem-serem-muito-saborosas-5bdaec2def6bb.jpg",
    produtos: [Couve, Alface, Tomate, Chuchu, Batata]
)

public let Salgadinhos = Categoria(
    nome: "Salgadinhos",
    imagem: "https://2519.cdn.simplo7.net/static/2519/sku/kits-kit-salgadinhos-coreanos-nongshim-9-sabores--p-1525882560133.png",
    produtos: [Doritos, Ruffles, Cheetos, Lays, Fandangos]
)

public let categorias = [Bebidas, Padaria, Laticinios, Acougue, Limpeza, Graos, Sacolao, Salgadinhos]

// FUNCAO PARA LISTAR OS SELECIONADOS

//ForEach(supermercados) { s in
//    Image()
//    Text(s.nome)
//    Text("R$\(valorTotal(prods: produtosSelecionados, sup: s))")
//}

//func valorTotal(prods: [Produtos], sup: Supermercado) -> Double {
//    var valorTotal = 0.0
//    
//    for p in prods {
//    
//        let precoProduto = getPreco(idProcurado: p.id, sup: sup)
//        
//        if precoProduto != 0.0 {
//            valorTotal = valorTotal + p.quantidade * precoProduto
//        } else {
//            valorTotal = 0.0
//            break
//        }
//    }
//    
//    return valorTotal
//}
//
//func getPreco(idProcurado: Int, sup: Supermercado) -> Double {
//    
//    var produtoPreco = 0.0
    
//    for p in sup.produtos {
//
//        if p.id == idProcurado {
//            produtoPreco = p.preco
//        }
//    }
//
//    return produtoPreco
//}
//
//func getProduto(idProcurado: Int, sup: Supermercado) -> Produto? {
//
//    var pSelecionado: Produto
//    for p in sup.produtos {
//
//        if p.id == idProcurado {
//            pSelecionado = p
//        }
//    }
//
//    return pSelecionado
//}
//
//func mostrarSelecionados(prods: [Produtos], sup: Supermercado) -> [Produto] {
//    var produtosSupermercado: [Produto] = []
//
//    for p in prods {
//
//        let produtoAtual = getProduto(idProcurado: p.id, sup: sup)
//        produtosSupermercado.append(produtoAtual!)
//    }
//
//    return produtosSupermercado
//}

// FUNCAO PARA PESQUISAR POR MAPA

//ForEach(supermercadoSelecionado.produtos) { p in
//
//    HStack {
//        AsyncImage(url: URL(p.image))
//
//        VStack {
//            Text(\(p.nome))
//            Text("R$ \(p.preco)")
//        }
//    }
//
//}

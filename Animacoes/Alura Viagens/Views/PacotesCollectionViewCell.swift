//
//  PacotesCollectionViewCell.swift
//  App Viagens
//
//  Created by Lucas Napoleão 10/04/23.
//  Copyright © 2023 Napoleão All rights reserved.
//

import UIKit

class PacotesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var imagemViagem: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    
    // MARK: - Métodos
    
    func configuraCelula(_ pacoteViagem: PacoteViagem) {
        labelTitulo.text = pacoteViagem.viagem.titulo
        labelQuantidadeDias.text = "\(pacoteViagem.viagem.quantidadeDeDias) dias"
        labelPreco.text = "R$ \(pacoteViagem.viagem.preco)"
        imagemViagem.image = UIImage(named: pacoteViagem.viagem.caminhoDaImagem)
        
        layer.borderWidth = 0.5
        layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
        layer.cornerRadius = 8
    }
}

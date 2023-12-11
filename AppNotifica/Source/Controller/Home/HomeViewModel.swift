//
//  HomeViewModel.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-02 on 06/12/23.
//

import Foundation
import UIKit

class HomeViewModel{
    
    var coordinator: HomeCoordinator
    var ocorrencias: [Ocorrencia] = []
    
    init(coordinator: HomeCoordinator){
        self.coordinator = coordinator
    }
    
    func fetchData() {
        self.ocorrencias = DataManager.shared.ocorrencias
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
    }
}
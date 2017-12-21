//
//  DocumentManager.swift
//  Terminal
//
//  Created by Louis D'hauwe on 07/12/2017.
//  Copyright © 2017 Silver Fox. All rights reserved.
//

import Foundation
import UIKit

class DocumentManager {
	
	static let shared = DocumentManager()
	
	let fileManager: FileManager

	init() {
		
		fileManager = .default
		
		let baseURL = self.activeDocumentsFolderURL!
		
		fileManager.changeCurrentDirectoryPath(baseURL.path)
		
	}
	
	private let ICLOUD_IDENTIFIER = "iCloud.com.silverfox.Terminal"
	
	private var localDocumentsURL: URL? {
		return fileManager.urls(for: .documentDirectory, in: .userDomainMask).last
	}
	
	private var cloudDocumentsURL: URL? {
		let ubiquityContainerURL = fileManager.url(forUbiquityContainerIdentifier: ICLOUD_IDENTIFIER)
		
		return ubiquityContainerURL?.appendingPathComponent("Documents")
	}
	
	var activeDocumentsFolderURL: URL? {
		
		if iCloudAvailable {
			return cloudDocumentsURL
		} else {
			return localDocumentsURL
		}
	}
	
	var iCloudAvailable: Bool {
		return fileManager.ubiquityIdentityToken != nil
	}

}

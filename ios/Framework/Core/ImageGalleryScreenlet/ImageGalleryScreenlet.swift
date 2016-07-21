/**
* Copyright (c) 2000-present Liferay, Inc. All rights reserved.
*
* This library is free software; you can redistribute it and/or modify it under
* the terms of the GNU Lesser General Public License as published by the Free
* Software Foundation; either version 2.1 of the License, or (at your option)
* any later version.
*
* This library is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
* FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
* details.
*/
import Foundation

@objc public protocol ImageGalleryScreenletDelegate : BaseScreenletDelegate {

	optional func screenlet(screenlet: ImageGalleryScreenlet,
	                        onImageEntriesResponse imageEntries: [ImageEntry])

	optional func screenlet(screenlet: ImageGalleryScreenlet,
	                        onImageEntriesError error: NSError)

	optional func screenlet(screenlet: ImageGalleryScreenlet,
	                        onImageEntrySelected imageEntry: ImageEntry)
	
}


@IBDesignable public class ImageGalleryScreenlet : BaseListScreenlet {
    
    @IBInspectable public var repositoryId: Int64 = 0
    @IBInspectable public var folderId: Int64 = 0
    
    @IBInspectable public var offlinePolicy: String? = CacheStrategyType.RemoteFirst.rawValue

	public var imageGalleryScreenletDelegate: ImageGalleryScreenletDelegate? {
		return delegate as? ImageGalleryScreenletDelegate
	}
    
    public override func createPageLoadInteractor(page page: Int, computeRowCount: Bool) -> BaseListPageLoadInteractor {
        
        return ImageGalleryInteractor(screenlet: self,
                                      page: page,
                                      computeRowCount: computeRowCount,
                                      repositoryId: repositoryId,
                                      folderId: folderId)
    }

	public override func onLoadPageError(page page: Int, error: NSError) {
		super.onLoadPageError(page: page, error: error)
		imageGalleryScreenletDelegate?.screenlet?(self, onImageEntriesError: error)
	}

	public override func onLoadPageResult(page page: Int, rows: [AnyObject], rowCount: Int) {
		super.onLoadPageResult(page: page, rows: rows, rowCount: rowCount)
		imageGalleryScreenletDelegate?.screenlet?(self, onImageEntriesResponse: rows as! [ImageEntry])
	}

	public override func onSelectedRow(row: AnyObject) {
		super.onSelectedRow(row)
		imageGalleryScreenletDelegate?.screenlet?(self, onImageEntrySelected: row as! ImageEntry)
	}
    
}
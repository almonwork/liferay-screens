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
import UIKit

// Users and sites
public let AssetClassNameKey_Group = "Group"
public let AssetClassNameKey_Layout = "Layout"
public let AssetClassNameKey_Organization = "Organization"
public let AssetClassNameKey_User = "User"
public let AssetClassNameKey_UserGroup = "UserGroup"

// Blogs
public let AssetClassNameKey_BlogsEntry = "BlogsEntry"

// Bookmarks
public let AssetClassNameKey_BookmarksEntry = "BookmarksEntry"
public let AssetClassNameKey_BookmarksFolder = "BookmarksFolder"

// Document Library
public let AssetClassNameKey_DLFileEntry = "DLFileEntry"
public let AssetClassNameKey_DLFolder = "DLFolder"
public let AssetClassNameKey_DLFileEntryMetadata = "DLFileEntryMetadata"
public let AssetClassNameKey_DLFileEntryType = "DLFileEntryType"
public let AssetClassNameKey_DLFileRank = "DLFileRank"
public let AssetClassNameKey_DLFileShortcut = "DLFileShortcut"
public let AssetClassNameKey_DLFileVersion = "DLFileVersion"

// DDL
public let AssetClassNameKey_DDLRecord = "DDLRecord"
public let AssetClassNameKey_DDLRecordSet = "DDLRecordSet"
public let AssetClassNameKey_DDLRecordVersion = "DDLRecordVersion"

// Journal
public let AssetClassNameKey_JournalArticle = "JournalArticle"
public let AssetClassNameKey_JournalArticleImage = "JournalArticleImage"
public let AssetClassNameKey_JournalFolder = "JournalFolder"

// MessageBoard
public let AssetClassNameKey_MBMessage = "MBMessage"
public let AssetClassNameKey_MBThread = "MBThread"
public let AssetClassNameKey_MBCategory = "MBCategory"
public let AssetClassNameKey_MBDiscussion = "MBDiscussion"
public let AssetClassNameKey_MBMailingList = "MBMailingList"

// Wiki
public let AssetClassNameKey_WikiPage = "WikiPage"
public let AssetClassNameKey_WikiPageResource = "WikiPageResource"
public let AssetClassNameKey_WikiNode = "WikiNode"


@objc public class AssetClassNameIds : NSObject {

	private static var classNameIds: [String:Int64] = {

		// These are the default identifiers for a Liferay Portal 6.2 CE GA2
		// installation.
		// Be aware your installation probably have different identifiers, so
		// you probably we'll need to overwrite these values like this:
		//		AssetClassNameKey_s.set(AssetClassNameKey_Group, 1234)

		return [
			// Users and sites
			AssetClassNameKey_Group : 10001,
			AssetClassNameKey_Layout : 10002,
			AssetClassNameKey_Organization : 10003,
			AssetClassNameKey_User : 10005,
			AssetClassNameKey_UserGroup : 10006,

			// Blogs
			AssetClassNameKey_BlogsEntry : 10007,

			// Bookmarks
			AssetClassNameKey_BookmarksEntry : 10008,
			AssetClassNameKey_BookmarksFolder : 10009,

			// Document Library
			AssetClassNameKey_DLFileEntry : 10011,
			AssetClassNameKey_DLFolder: 10012,
			AssetClassNameKey_DLFileEntryMetadata : 10091,
			AssetClassNameKey_DLFileEntryType : 10092,
			AssetClassNameKey_DLFileRank : 10093,
			AssetClassNameKey_DLFileShortcut : 10094,
			AssetClassNameKey_DLFileVersion : 10095,

			// DDL
			AssetClassNameKey_DDLRecord : 10097,
			AssetClassNameKey_DDLRecordSet : 10098,
			AssetClassNameKey_DDLRecordVersion : 10099,

			// Journal
			AssetClassNameKey_JournalArticle : 10109,
			AssetClassNameKey_JournalArticleImage : 10110,
			AssetClassNameKey_JournalFolder : 10013,

			// MessageBoard
			AssetClassNameKey_MBMessage : 10014,
			AssetClassNameKey_MBThread : 10015,
			AssetClassNameKey_MBCategory : 10115,
			AssetClassNameKey_MBDiscussion : 10116,
			AssetClassNameKey_MBMailingList : 10117,

			// Wiki
			AssetClassNameKey_WikiPage : 10016,
			AssetClassNameKey_WikiPageResource : 10153,
			AssetClassNameKey_WikiNode : 10152
		]
	}()

	private static var classNames: [String:String] = {

		// These are the default className for a Liferay Portal 7.0 CE GA2
		// installation.
		// Be aware your installation probably have different className, so
		// you probably we'll need to overwrite these values like this:
		//		AssetClassNameIds.set(AssetClassNameKey_Group, "com.liferay.portal.kernel.model.Group")

		return [
			// Users and sites
			AssetClassNameKey_Group : "com.liferay.portal.kernel.model.Group",
			AssetClassNameKey_Layout : "com.liferay.portal.kernel.model.Layout",
			AssetClassNameKey_Organization : "com.liferay.portal.kernel.model.Organization",
			AssetClassNameKey_User : "com.liferay.portal.kernel.model.User",
			AssetClassNameKey_UserGroup : "com.liferay.portal.kernel.model.UserGroup",

			// Blogs
			AssetClassNameKey_BlogsEntry : "com.liferay.blogs.kernel.model.BlogsEntry",

			// Bookmarks
			AssetClassNameKey_BookmarksEntry : "com.liferay.bookmarks.model.BookmarksEntry",
			AssetClassNameKey_BookmarksFolder : "com.liferay.bookmarks.model.BookmarksFolder",

			// Document Library
			AssetClassNameKey_DLFileEntry : "com.liferay.document.library.kernel.model.DLFileEntry",
			AssetClassNameKey_DLFolder : "com.liferay.document.library.kernel.model.DLFolder",
			AssetClassNameKey_DLFileEntryMetadata : "com.liferay.document.library.kernel.model.DLFileEntryMetadata",
			AssetClassNameKey_DLFileEntryType : "com.liferay.document.library.kernel.model.DLFileEntryType",
			AssetClassNameKey_DLFileRank : "com.liferay.document.library.kernel.model.DLFileRank",
			AssetClassNameKey_DLFileShortcut : "com.liferay.document.library.kernel.model.DLFileShortcut",
			AssetClassNameKey_DLFileVersion : "com.liferay.document.library.kernel.model.DLFileVersion",

			// DDL
			AssetClassNameKey_DDLRecord : "com.liferay.dynamic.data.lists.model.DDLRecord",
			AssetClassNameKey_DDLRecordSet : "com.liferay.dynamic.data.lists.model.DDLRecordSet",
			AssetClassNameKey_DDLRecordVersion : "com.liferay.dynamic.data.lists.model.DDLRecordVersion",

			// Journal
			AssetClassNameKey_JournalArticle : "com.liferay.journal.model.JournalArticle",
			AssetClassNameKey_JournalArticleImage : "com.liferay.journal.model.JournalArticleImage",
			AssetClassNameKey_JournalFolder : "com.liferay.journal.model.JournalFolder",

			// MessageBoard
			AssetClassNameKey_MBMessage : "com.liferay.message.boards.kernel.model.MBMessage",
			AssetClassNameKey_MBThread : "com.liferay.message.boards.kernel.model.MBThread",
			AssetClassNameKey_MBCategory : "com.liferay.message.boards.kernel.model.MBCategory",
			AssetClassNameKey_MBDiscussion : "com.liferay.message.boards.kernel.model.MBDiscussion",
			AssetClassNameKey_MBMailingList : "com.liferay.message.boards.kernel.model.MBMailingList",

			// Wiki
			AssetClassNameKey_WikiPage : "com.liferay.wiki.model.WikiPage",
			AssetClassNameKey_WikiPageResource : "com.liferay.wiki.model.WikiPageResource",
			AssetClassNameKey_WikiNode : "com.liferay.wiki.model.WikiNode"
		]
	}()

	public class func getClassNameId(key: String) -> Int64? {
		return classNameIds[key]
	}

	public class func getClassName(key: String) -> String? {
		return classNames[key]
	}

	public class func getClassNameFromId(classNameId: Int64) -> String? {
		return classNameIds.filter({$0.1 == classNameId}).first?.0
	}

	public class func set(key: String, newId: Int64) {
		classNameIds[key] = newId
	}

	public class func set(key: String, newClassName: String) {
		classNames[key] = newClassName
	}
}

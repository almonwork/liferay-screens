package com.liferay.mobile.screens.comment.display.view;

import com.liferay.mobile.screens.base.view.BaseViewModel;
import com.liferay.mobile.screens.models.CommentEntry;

/**
 * @author Alejandro Hernández
 */
public interface CommentDisplayViewModel extends BaseViewModel {

	void allowEdition(boolean editable);

	void showFinishOperation(String loadCommentAction, CommentEntry commentEntry);
}

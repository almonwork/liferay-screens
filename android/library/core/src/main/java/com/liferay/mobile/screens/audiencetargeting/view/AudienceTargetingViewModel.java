package com.liferay.mobile.screens.audiencetargeting.view;

import com.liferay.mobile.screens.audiencetargeting.interactor.requestcontent.AudienceTargetingContentEvent;
import com.liferay.mobile.screens.base.view.BaseViewModel;

/**
 * @author Javier Gamarra
 */
public interface AudienceTargetingViewModel extends BaseViewModel {

	void showAudienceContent(AudienceTargetingContentEvent event);
}
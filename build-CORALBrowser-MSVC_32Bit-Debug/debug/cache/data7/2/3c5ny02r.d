   �      :http://s0.2mdn.net/3163378/plcr_2653711_0_1374017852097.js     %{�6��     %{��`              �      
     O K      Vary   Accept-Encoding   Content-Encoding   gzip   Content-Type   text/javascript   Last-Modified   Tue, 16 Jul 2013 23:37:32 GMT   Date   Mon, 22 Jul 2013 04:00:06 GMT   Expires   Tue, 23 Jul 2013 04:00:06 GMT   X-Content-Type-Options   nosniff   Server   sffe   X-XSS-Protection   1; mode=block   Cache-Control   public, max-age=86400   Age   53890 (function() {
  var creativeDefinition = {
    customScriptUrl: '',
    isDynamic: false,
    delayedImpression: false,
    standardEventIds: {
      DISPLAY_TIMER: '2',
      INTERACTION_TIMER: '3',
      INTERACTIVE_IMPRESSION: '4',
      FULL_SCREEN_VIDEO_PLAYS: '5',
      FULL_SCREEN_VIDEO_COMPLETES: '6',
      FULL_SCREEN_AVERAGE_VIEW_TIME: '7',
      MANUAL_CLOSE: '8',
      BACKUP_IMAGE_IMPRESSION: '9',
      EXPAND_TIMER: '10',
      VIDEO_PLAY: '11',
      VIDEO_VIEW_TIMER: '12',
      VIDEO_COMPLETE: '13',
      VIDEO_INTERACTION: '14',
      VIDEO_PAUSE: '15',
      VIDEO_MUTE: '16',
      VIDEO_REPLAY: '17',
      VIDEO_MIDPOINT: '18',
      FULL_SCREEN_VIDEO: '19',
      VIDEO_STOP: '20',
      VIDEO_UNMUTE: '21',
      FULL_SCREEN: '22',
      DYNAMIC_CREATIVE_IMPRESSION: '23',
      HTML5_CREATIVE_IMPRESSION: '25'
    },
    exitEvents: [
      {
        name: 'Background_Exit',
        reportingId: '869023',
        url: 'http://adfarm.mediaplex.com/ad/ck/16161-173995-15838-15?mpt\x3d%n',
        targetWindow: '_blank',
        windowProperties: ''
      },
      {
        name: 'Go_Button_Exit',
        reportingId: '1160395',
        url: 'http://adfarm.mediaplex.com/ad/ck/16161-173995-15838-15?mpt\x3d%n',
        targetWindow: '_blank',
        windowProperties: ''
      },
      {
        name: 'Mobile_Deposit_More_Button_Exit',
        reportingId: '1160394',
        url: 'http://adfarm.mediaplex.com/ad/ck/16161-173995-15838-16',
        targetWindow: '_blank',
        windowProperties: ''
      },
      {
        name: 'SurePay_More_Button_Exit',
        reportingId: '1160392',
        url: 'http://adfarm.mediaplex.com/ad/ck/16161-173995-15838-17',
        targetWindow: '_blank',
        windowProperties: ''
      }
    ],
    timerEvents: [
      {
        name: 'String:ViewTime',
        reportingId: '1227349',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_VIEW_TIMER'
        }
      },
      {
        name: 'YTP_Billing:ViewTime',
        reportingId: '548457',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_VIEW_TIMER'
        }
      },
      {
        name: 'YT_INP_Engaged_Video1_Timer',
        reportingId: '876307',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Timer',
        reportingId: '876305',
        videoData: null
      }
    ],
    counterEvents: [
      {
        name: 'Close Ad',
        reportingId: '544886',
        videoData: null
      },
      {
        name: 'CloseAd_Ctr',
        reportingId: '851376',
        videoData: null
      },
      {
        name: 'Mobile_Deposit_Back_Ctr',
        reportingId: '1160391',
        videoData: null
      },
      {
        name: 'Mobile_Deposit_Demo_Ctr',
        reportingId: '1160390',
        videoData: null
      },
      {
        name: 'String:Complete',
        reportingId: '1227355',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_COMPLETE'
        }
      },
      {
        name: 'String:Interaction',
        reportingId: '1227353',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_INTERACTION'
        }
      },
      {
        name: 'String:MidPoint',
        reportingId: '1227358',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_MIDPOINT'
        }
      },
      {
        name: 'String:Mute',
        reportingId: '1227354',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_MUTE'
        }
      },
      {
        name: 'String:Pause',
        reportingId: '1227356',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_PAUSE'
        }
      },
      {
        name: 'String:Play',
        reportingId: '1227350',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_PLAY'
        }
      },
      {
        name: 'String:Replay',
        reportingId: '1227352',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_REPLAY'
        }
      },
      {
        name: 'String:Stop',
        reportingId: '1227351',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_STOP'
        }
      },
      {
        name: 'String:Unmute',
        reportingId: '1227357',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'String',
          associatedStandardVideoEvent: 'VIDEO_UNMUTE'
        }
      },
      {
        name: 'SurePay_Back_Ctr',
        reportingId: '1160389',
        videoData: null
      },
      {
        name: 'SurePay_Demo_Ctr',
        reportingId: '1160393',
        videoData: null
      },
      {
        name: 'YTP_Billing:Complete',
        reportingId: '548506',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_COMPLETE'
        }
      },
      {
        name: 'YTP_Billing:Interaction',
        reportingId: '548505',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_INTERACTION'
        }
      },
      {
        name: 'YTP_Billing:MidPoint',
        reportingId: '548492',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_MIDPOINT'
        }
      },
      {
        name: 'YTP_Billing:Mute',
        reportingId: '548495',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_MUTE'
        }
      },
      {
        name: 'YTP_Billing:Pause',
        reportingId: '548444',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_PAUSE'
        }
      },
      {
        name: 'YTP_Billing:Play',
        reportingId: '548455',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_PLAY'
        }
      },
      {
        name: 'YTP_Billing:Replay',
        reportingId: '548483',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_REPLAY'
        }
      },
      {
        name: 'YTP_Billing:Stop',
        reportingId: '548499',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_STOP'
        }
      },
      {
        name: 'YTP_Billing:Unmute',
        reportingId: '548484',
        videoData: {
          associatedVideoEntryReportingIdentifier: 'YTP_Billing',
          associatedStandardVideoEvent: 'VIDEO_UNMUTE'
        }
      },
      {
        name: 'YT_INP_Engaged_Video1_100%_Ctr',
        reportingId: '876300',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_25%_Ctr',
        reportingId: '876230',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_50%_Ctr',
        reportingId: '876288',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_75%_Ctr',
        reportingId: '876237',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_Fullscreen_Enter_Ctr',
        reportingId: '876284',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_Fullscreen_Exit_Ctr',
        reportingId: '876313',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_Mute_Ctr',
        reportingId: '876282',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_Pause_Ctr',
        reportingId: '876286',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_Play_Ctr',
        reportingId: '949192',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_Replay_Ctr',
        reportingId: '876320',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video1_Unmute_Ctr',
        reportingId: '876302',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_100%_Ctr',
        reportingId: '876258',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_25%_Ctr',
        reportingId: '876228',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_50%_Ctr',
        reportingId: '876287',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_75%_Ctr',
        reportingId: '876247',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Fullscreen_Enter_Ctr',
        reportingId: '876295',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Fullscreen_Exit_Ctr',
        reportingId: '876240',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Mute_Ctr',
        reportingId: '876309',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Pause_Ctr',
        reportingId: '876298',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Play_Ctr',
        reportingId: '1004376',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Replay_Ctr',
        reportingId: '876291',
        videoData: null
      },
      {
        name: 'YT_INP_Engaged_Video2_Unmute_Ctr',
        reportingId: '876303',
        videoData: null
      }
    ],
    childFiles: [
      {
        name: 'Billing_AS3_FP10.2_v231.swf',
        url: '/ads/richmedia/studio/24374610/24374612_20130716143124540_Billing_AS3_FP10.2_v231.swf',
        isVideo: false
      },
      {
        name: 'fsButton_AS3_FP10.2v231.swf',
        url: '/ads/richmedia/studio/24374610/24374612_20130716143132029_fsButton_AS3_FP10.2v231.swf',
        isVideo: false
      },
      {
        name: 'WF_Convenience_YouTube_970x250_V1R3.swf',
        url: '/ads/richmedia/studio/24374610/24374612_20130716143202580_WF_Convenience_YouTube_970x250_V1R3.swf',
        isVideo: false
      },
      {
        name: 'placeholderBackup.jpg',
        url: '/ads/richmedia/studio/24374610/24374612_20130716143151645_placeholderBackup.jpg',
        isVideo: false
      }
    ],
    videoFiles: [
    ],
    videoEntries: [
      {
        reportingIdentifier: 'String',
        startMuted: false,
        autoBuffer: false,
        streaming: false,
        lowBandwidthVideo: '',
        mediumBandwidthVideo: '',
        highBandwidthVideo: '',
        lowBandwidthFallbackVideo: '',
        mediumBandwidthFallbackVideo: '',
        highBandwidthFallbackVideo: ''
      },
      {
        reportingIdentifier: 'YTP_Billing',
        startMuted: true,
        autoBuffer: false,
        streaming: false,
        lowBandwidthVideo: '',
        mediumBandwidthVideo: '',
        highBandwidthVideo: '',
        lowBandwidthFallbackVideo: '',
        mediumBandwidthFallbackVideo: '',
        highBandwidthFallbackVideo: ''
      }
    ],
    primaryAssets: [
      {
        id: '24377847',
        artworkType: 'FLASH',
        displayType: 'EXPANDING_BANNER',
        width: '970',
        height: '250',
        servingPath: '/ads/richmedia/studio/24374610/24374612_20130716163439241_main.swf',
        zIndex: '1',
        customCss: '',
        flashArtworkTypeData: {
          actionscriptVersion: '3',
          wmode: 'opaque',
          sdkVersion: '2.3.1'
        },
        htmlArtworkTypeData: null,
        floatingDisplayTypeData: null,
        expandingDisplayTypeData: {
          collapsedRect: {
            left: 0,
            top: 0,
            width: 970,
            height: 250
          },
          isPushdown: false,
          pushdownAnimationTime: 0,
          expansionMode: 'NORMAL'
        },
        pageSettings:{
          hideDropdowns: false,
          hideIframes: false,
          hideObjects: false,
          updateZIndex: true
        },
        layoutsConfig: null
      }
    ]
  }
  var rendererDisplayType = '';
  rendererDisplayType += 'flash_';
  var rendererFormat = 'expanding';
  var rendererName = rendererDisplayType + rendererFormat;

  var creativeId = '1374017851737';
  var adId = '0';
  var templateVersion = '200_24';
  var studioObjects = window['studioV2'] = window['studioV2'] || {};
  var creativeObjects = studioObjects['creatives'] = studioObjects['creatives'] || {};
  var creativeKey = [creativeId, adId].join('_');
  var creative = creativeObjects[creativeKey] = creativeObjects[creativeKey] || {};
  creative['creativeDefinition'] = creativeDefinition;
  var adResponses = creative['adResponses'] || [];
  for (var i = 0; i < adResponses.length; i++) {
    adResponses[i].creativeDto && adResponses[i].creativeDto.csiEvents &&
        (adResponses[i].creativeDto.csiEvents['pe'] =
            adResponses[i].creativeDto.csiEvents['pe'] || (+new Date));
  }
  var loadedLibraries = studioObjects['loadedLibraries'] = studioObjects['loadedLibraries'] || {};
  var versionedLibrary = loadedLibraries[templateVersion] = loadedLibraries[templateVersion] || {};
  var typedLibrary = versionedLibrary[rendererName] = versionedLibrary[rendererName] || {};
  if (typedLibrary['bootstrap']) {
    typedLibrary.bootstrap();
  }
})();

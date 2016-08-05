.class public Lcom/mediatek/fmradio/FMRadioEngineer;
.super Landroid/app/Activity;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
.implements Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;


# static fields
.field private static final FM:Ljava/lang/String; = "FM"

.field private static final REFS_NAME:Ljava/lang/String; = "FMRecord"

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final SHORT_ANNTENNA_SUPPORT:Z

.field private static final START_PLAY_TIME:Ljava/lang/String; = "startPlayTime"

.field private static final START_RECORD_TIME:Ljava/lang/String; = "startRecordTime"

.field public static final STATION0:I = 0x36e

.field public static final STATION1:I = 0x37d

.field public static final STATION2:I = 0x3a2

.field public static final STATION3:I = 0x3b6

.field public static final STATION4:I = 0x3dd

.field public static final STATION5:I = 0x3e5

.field private static final TAG:Ljava/lang/String; = "FmRx/Activity"

.field private static final TAG_NO_ANTENNA:Ljava/lang/String; = "NoAntenna"

.field private static final TAG_SAVE_RECORDINGD:Ljava/lang/String; = "SaveRecording"

.field private static final TAG_SEARCH:Ljava/lang/String; = "Search"


# instance fields
.field private btnFail:Landroid/widget/Button;

.field private btnPass:Landroid/widget/Button;

.field private btnSTATION0:Landroid/widget/Button;

.field private btnSTATION1:Landroid/widget/Button;

.field private btnSTATION2:Landroid/widget/Button;

.field private btnSTATION3:Landroid/widget/Button;

.field private btnSTATION4:Landroid/widget/Button;

.field private btnSTATION5:Landroid/widget/Button;

.field private mAnimImage:Landroid/widget/ImageView;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonDecrease:Landroid/widget/ImageButton;

.field private mButtonIncrease:Landroid/widget/ImageButton;

.field private mButtonNextStation:Landroid/widget/ImageButton;

.field private mButtonPlayback:Landroid/widget/ImageButton;

.field private mButtonPrevStation:Landroid/widget/ImageButton;

.field private mButtonRecord:Landroid/widget/ImageButton;

.field private mButtonStop:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityForeground:Z

.field private mIsInRecordingMode:Z

.field private mIsNeedDisablePower:Z

.field private mIsNeedShowNoAntennaDlg:Z

.field private mIsNeedShowRecordDlg:Z

.field private mIsNeedShowSearchDlg:Z

.field private mIsPlaying:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mMenuItemChannelList:Landroid/view/MenuItem;

.field private mMenuItemOverflow:Landroid/view/MenuItem;

.field private mMenuItemPower:Landroid/view/MenuItem;

.field private mNeedTuneto:Z

.field private mPlayStartTime:J

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPrevRecorderState:I

.field private mRLRecordInfo:Landroid/widget/RelativeLayout;

.field private mRecordStartTime:J

.field private mRecordState:I

.field private mService:Lcom/mediatek/fmradio/FmRadioService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextFm:Landroid/widget/TextView;

.field private mTextMHz:Landroid/widget/TextView;

.field private mTextRds:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mTextStationValue:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTxtRecInfoLeft:Landroid/widget/TextView;

.field private mTxtRecInfoRight:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmShortAntennaSupport()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/fmradio/FMRadioEngineer;->SHORT_ANNTENNA_SUPPORT:Z

    .line 175
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mTextStationName:Landroid/widget/TextView;

    .line 115
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mTextStationValue:Landroid/widget/TextView;

    .line 117
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mTextRds:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mTextFm:Landroid/widget/TextView;

    .line 121
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mTextMHz:Landroid/widget/TextView;

    .line 122
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 123
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 124
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 125
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 126
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 127
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 128
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 129
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonRecord:Landroid/widget/ImageButton;

    .line 130
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonStop:Landroid/widget/ImageButton;

    .line 131
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 132
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mAnimation:Landroid/view/animation/Animation;

    .line 133
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mAnimImage:Landroid/widget/ImageView;

    .line 136
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 139
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 140
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 141
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mMenuItemPower:Landroid/view/MenuItem;

    .line 142
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    .line 146
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 147
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    .line 148
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    .line 149
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 151
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    .line 152
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    .line 153
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    .line 154
    iput-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    .line 157
    iput-wide v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordStartTime:J

    .line 158
    iput-wide v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPlayStartTime:J

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    .line 160
    const/16 v0, 0x36e

    iput v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 161
    iput v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    .line 164
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    .line 165
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    .line 166
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 167
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 168
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mAudioManager:Landroid/media/AudioManager;

    .line 177
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION0:Landroid/widget/Button;

    .line 178
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION1:Landroid/widget/Button;

    .line 179
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION2:Landroid/widget/Button;

    .line 180
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION3:Landroid/widget/Button;

    .line 181
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION4:Landroid/widget/Button;

    .line 182
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION5:Landroid/widget/Button;

    .line 184
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnPass:Landroid/widget/Button;

    .line 185
    iput-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnFail:Landroid/widget/Button;

    .line 190
    new-instance v0, Lcom/mediatek/fmradio/FMRadioEngineer$1;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FMRadioEngineer$1;-><init>(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    .line 209
    new-instance v0, Lcom/mediatek/fmradio/FMRadioEngineer$2;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FMRadioEngineer$2;-><init>(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FMRadioEngineer$3;-><init>(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 460
    new-instance v0, Lcom/mediatek/fmradio/FMRadioEngineer$4;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FMRadioEngineer$4;-><init>(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/FMRadioEngineer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 1120
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/mediatek/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    return v0
.end method

.method static synthetic access$11(Lcom/mediatek/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 1544
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    return-void
.end method

.method static synthetic access$13(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 1165
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    return-void
.end method

.method static synthetic access$15(Lcom/mediatek/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    return-void
.end method

.method static synthetic access$16(Lcom/mediatek/fmradio/FMRadioEngineer;)I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$17(Lcom/mediatek/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshStationUI(I)V

    return-void
.end method

.method static synthetic access$18(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->dismissSearchDialog()V

    return-void
.end method

.method static synthetic access$19(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->enterChannelList()V

    return-void
.end method

.method static synthetic access$2(Lcom/mediatek/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$20(Lcom/mediatek/fmradio/FMRadioEngineer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->showRds(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/mediatek/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->updateRecordingState(I)V

    return-void
.end method

.method static synthetic access$22(Lcom/mediatek/fmradio/FMRadioEngineer;I)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->updateRecorderError(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/mediatek/fmradio/FMRadioEngineer;Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    return-void
.end method

.method static synthetic access$24(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    return-object v0
.end method

.method static synthetic access$25(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->powerUpFm()V

    return-void
.end method

.method static synthetic access$26(Lcom/mediatek/fmradio/FMRadioEngineer;)Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    return v0
.end method

.method static synthetic access$27(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    return-void
.end method

.method static synthetic access$28(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1609
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->updateCurrentStation()V

    return-void
.end method

.method static synthetic access$29(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->updateMenuStatus()V

    return-void
.end method

.method static synthetic access$3(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1453
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->exitService()V

    return-void
.end method

.method static synthetic access$30(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1627
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->updateDialogStatus()V

    return-void
.end method

.method static synthetic access$31(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->updateRds()V

    return-void
.end method

.method static synthetic access$32(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->restoreRecorderState()V

    return-void
.end method

.method static synthetic access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1185
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshRecordNotIdle()V

    return-void
.end method

.method static synthetic access$6(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1718
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshTimeText()V

    return-void
.end method

.method static synthetic access$7(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    return-void
.end method

.method static synthetic access$8(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->stopAnimation()V

    return-void
.end method

.method static synthetic access$9(Lcom/mediatek/fmradio/FMRadioEngineer;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1241
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private changeRecordingMode(Z)V
    .locals 3
    .param p1, "recordingMode"    # Z

    .prologue
    .line 1261
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeRecordingMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-ne v0, p1, :cond_1

    .line 1263
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "FM already "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "in"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1264
    const-string v2, "recording mode!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :goto_1
    return-void

    .line 1263
    :cond_0
    const-string v0, "NOT in"

    goto :goto_0

    .line 1267
    :cond_1
    iput-boolean p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 1268
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/fmradio/FmRadioService;->setRecordingModeAsync(Z)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->switchRecordLayout(Z)V

    goto :goto_1
.end method

.method private checkNoAntennaDialogInOnResume()V
    .locals 2

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmShortAntennaSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    const-string v0, "FmRx/Activity"

    const-string v1, "Need to show no antenna dialog for plug out earphone in onPause state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z

    .line 794
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->showNoAntennaDialog()V

    .line 796
    :cond_0
    return-void
.end method

.method private dismissNoAntennaDialog()Z
    .locals 3

    .prologue
    .line 1545
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1546
    const-string v2, "NoAntenna"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1545
    check-cast v0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    .line 1547
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    if-eqz v0, :cond_0

    .line 1548
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->dismissAllowingStateLoss()V

    .line 1549
    const/4 v1, 0x1

    .line 1551
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissSaveRecordingDialog()V
    .locals 4

    .prologue
    .line 1518
    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1519
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "SaveRecording"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1520
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1521
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1522
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1524
    :cond_0
    return-void
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 1508
    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1507
    check-cast v0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    .line 1509
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 1510
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->dismissAllowingStateLoss()V

    .line 1512
    :cond_0
    return-void
.end method

.method private editSharedPreferences(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 649
    const-string v2, "FMRecord"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/fmradio/FMRadioEngineer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 650
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 651
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 652
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 653
    return-void
.end method

.method private enterChannelList()V
    .locals 3

    .prologue
    .line 684
    const-string v1, "FmRx/Activity"

    const-string v2, "enterChannelList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v1, :cond_0

    .line 688
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    if-eqz v1, :cond_1

    .line 689
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 690
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/mediatek/fmradio/FmRadioFavorite;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 691
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 696
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const-string v1, "FmRx/Activity"

    const-string v2, "enterChannelList. activity is background, not enter channel list."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1454
    const-string v1, "FmRx/Activity"

    const-string v2, "exitService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1457
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 1460
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 1461
    new-instance v1, Landroid/content/Intent;

    .line 1462
    const-class v2, Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1461
    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 1463
    .local v0, "isSuccess":Z
    if-nez v0, :cond_1

    .line 1464
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    .line 1468
    .end local v0    # "isSuccess":Z
    :cond_2
    return-void
.end method

.method private getTimeString(I)Ljava/lang/String;
    .locals 14
    .param p1, "time"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 622
    const/16 v3, 0xe10

    .line 623
    .local v3, "oneHour":I
    div-int/lit16 v0, p1, 0xe10

    .line 624
    .local v0, "hour":I
    const/16 v2, 0x3c

    .line 625
    .local v2, "minuteSecond":I
    div-int/lit8 v8, p1, 0x3c

    rem-int/lit8 v1, v8, 0x3c

    .line 626
    .local v1, "minute":I
    rem-int/lit8 v4, p1, 0x3c

    .line 627
    .local v4, "second":I
    const/4 v7, 0x0

    .line 629
    .local v7, "timeString":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 630
    const-string v5, "%02d:%02d:%02d"

    .line 631
    .local v5, "timeFormatLong":Ljava/lang/String;
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 637
    .end local v5    # "timeFormatLong":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 633
    :cond_0
    const-string v6, "%02d:%02d"

    .line 634
    .local v6, "timeFormatShort":Ljava/lang/String;
    const-string v8, "%02d:%02d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private initUiComponent()V
    .locals 2

    .prologue
    .line 1687
    const-string v0, "FmRx/Activity"

    const-string v1, "initUIComponent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION0:Landroid/widget/Button;

    .line 1691
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION1:Landroid/widget/Button;

    .line 1692
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION2:Landroid/widget/Button;

    .line 1693
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION3:Landroid/widget/Button;

    .line 1694
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION4:Landroid/widget/Button;

    .line 1695
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION5:Landroid/widget/Button;

    .line 1697
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnFail:Landroid/widget/Button;

    .line 1698
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnPass:Landroid/widget/Button;

    .line 1703
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isRecordFileExist()Z
    .locals 4

    .prologue
    .line 1368
    const/4 v0, 0x0

    .line 1369
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingNameWithPath()Ljava/lang/String;

    move-result-object v0

    .line 1371
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v1, "recordingFileToSave":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1534
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v0

    .line 1535
    .local v0, "sdcard":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1536
    .local v1, "unmountSDCard":Ljava/lang/String;
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unmount sd card file path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1538
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private powerUpFm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1094
    const-string v0, "FmRx/Activity"

    const-string v1, "start powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1096
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1097
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1098
    invoke-direct {p0, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1099
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1100
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    iget v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    .line 1101
    const-string v0, "FmRx/Activity"

    const-string v1, "end powerUpFm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    return-void
.end method

.method private refreshActionMenuItem(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1162
    return-void
.end method

.method private refreshActionMenuPower(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1166
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshActionMenuPower enabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void
.end method

.method private refreshImageButton(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1151
    return-void
.end method

.method private refreshPlaybackIdle(Z)V
    .locals 0
    .param p1, "btnPlayBack"    # Z

    .prologue
    .line 1195
    return-void
.end method

.method private refreshPlaybacking()V
    .locals 0

    .prologue
    .line 1203
    return-void
.end method

.method private refreshPopupMenuItem(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1179
    return-void
.end method

.method private refreshRecordIdle()V
    .locals 0

    .prologue
    .line 1190
    return-void
.end method

.method private refreshRecordNotIdle()V
    .locals 0

    .prologue
    .line 1187
    return-void
.end method

.method private refreshRecording()V
    .locals 0

    .prologue
    .line 1199
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 10
    .param p1, "stateOverride"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 1301
    const/4 v2, -0x1

    .line 1303
    .local v2, "recorderState":I
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    .line 1304
    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioService;->getRecorderState()I

    move-result v2

    .line 1306
    :goto_0
    const-string v5, "FmRx/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "refreshRecordingStatus: state="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    packed-switch v2, :pswitch_data_0

    .line 1354
    :pswitch_0
    const-string v4, "FmRx/Activity"

    const-string v5, "invalid record status"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_1
    iput v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    .line 1358
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshRecordingStatus.mPrevRecorderState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    return-void

    :cond_0
    move v2, p1

    .line 1304
    goto :goto_0

    .line 1309
    :pswitch_1
    iget-object v5, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioService;->getRecordTime()J

    move-result-wide v0

    .line 1310
    .local v0, "recordTime":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_1

    .line 1311
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->isRecordFileExist()Z

    .line 1315
    const/4 v5, 0x6

    iget v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    if-ne v5, v6, :cond_1

    .line 1316
    const-string v5, "FmRx/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "need show recorder dialog.mPrevRecorderState:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1317
    iget v7, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1316
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-boolean v5, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    if-eqz v5, :cond_2

    .line 1319
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->showSaveRecordingDialog()V

    .line 1328
    :cond_1
    :goto_2
    cmp-long v5, v0, v8

    if-lez v5, :cond_3

    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->isRecordFileExist()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPlaybackIdle(Z)V

    goto :goto_1

    .line 1321
    :cond_2
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    goto :goto_2

    .line 1328
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 1334
    .end local v0    # "recordTime":J
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshRecording()V

    goto :goto_1

    .line 1339
    :pswitch_3
    iget-object v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v3

    .line 1340
    .local v3, "recordingName":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 1341
    const-string v3, ""

    .line 1344
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPlaybacking()V

    goto :goto_1

    .line 1349
    .end local v3    # "recordingName":Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshRecordIdle()V

    goto :goto_1

    .line 1307
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshSoundModeVisiable()V
    .locals 0

    .prologue
    .line 1183
    return-void
.end method

.method private refreshStationUI(I)V
    .locals 0
    .param p1, "station"    # I

    .prologue
    .line 707
    return-void
.end method

.method private refreshTimeText()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1719
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshTimeText:mRecordState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-boolean v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-nez v4, :cond_2

    .line 1721
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "refreshTimeText:mIsInRecordingMode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    .line 1723
    iget-object v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->stopRecordingAsync()V

    .line 1757
    :cond_0
    :goto_0
    return-void

    .line 1724
    :cond_1
    iget v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 1725
    iget-object v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->stopPlaybackAsync()V

    goto :goto_0

    .line 1730
    :cond_2
    const/16 v0, 0x3e8

    .line 1731
    .local v0, "oneSecond":I
    iget v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    packed-switch v4, :pswitch_data_0

    .line 1756
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1733
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordStartTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v2, v4

    .line 1737
    .local v2, "recordTime":I
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingSdcard()Ljava/lang/String;

    move-result-object v3

    .line 1738
    .local v3, "recordingSdcard":Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioUtils;->hasEnoughSpace(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1740
    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 1742
    iget-object v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v4}, Lcom/mediatek/fmradio/FmRadioService;->stopRecordingAsync()V

    goto :goto_1

    .line 1748
    .end local v2    # "recordTime":I
    .end local v3    # "recordingSdcard":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPlayStartTime:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    long-to-int v1, v4

    .line 1751
    .local v1, "playTime":I
    goto :goto_1

    .line 1731
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerButtonClickListener()V
    .locals 2

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1709
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION1:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1710
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1711
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION3:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1712
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION4:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1713
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnSTATION5:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1714
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnFail:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1715
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->btnPass:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1716
    return-void
.end method

.method private restoreConfiguration()V
    .locals 4

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 713
    const-string v1, "FmRx/Activity"

    .line 714
    const-string v2, "Configration changes,activity restart,need to reset UI!"

    .line 713
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 716
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 730
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 719
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "mPrevRecorderState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    .line 720
    const-string v1, "mRecordState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    .line 721
    const-string v1, "mIsFreshRecordingStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    .line 723
    const-string v1, "mIsNeedShowSearchDlg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    .line 726
    const-string v1, "isInRecordingMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 727
    const-string v1, "mIsPlaying"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    .line 728
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreRecorderState()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1066
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->getRecordingMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    .line 1067
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->getRecorderState()I

    move-result v1

    iput v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    .line 1071
    const/4 v1, 0x6

    iget v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    if-eq v1, v2, :cond_0

    .line 1072
    const/4 v1, 0x7

    iget v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    if-ne v1, v2, :cond_1

    .line 1073
    :cond_0
    const-string v1, "FMRecord"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1074
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "startRecordTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordStartTime:J

    .line 1075
    const-string v1, "startPlayTime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPlayStartTime:J

    .line 1077
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&&&sendemptyMessage:mRecoderStart:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1083
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->switchRecordLayout(Z)V

    .line 1084
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->changeRecordingMode(Z)V

    .line 1085
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-eqz v1, :cond_2

    .line 1086
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshRecordingStatus(I)V

    .line 1088
    :cond_2
    return-void
.end method

.method private seekStation(IZ)V
    .locals 2
    .param p1, "station"    # I
    .param p2, "direction"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1140
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1141
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1142
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1143
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1144
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1145
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/fmradio/FmRadioService;->seekStationAsync(FZ)V

    .line 1147
    return-void
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 2
    .param p1, "isSpeaker"    # Z

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    .line 1106
    const-string v0, "FmRx/Activity"

    const-string v1, "UseSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 1113
    :goto_0
    return-void

    .line 1109
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "UseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    goto :goto_0
.end method

.method private showRds(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1252
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FMRadioEngineer.showRds: RDS = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    return-void
.end method

.method private showSearchDialog()V
    .locals 3

    .prologue
    .line 1498
    invoke-static {}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->newInstance()Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 1499
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1500
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1501
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1247
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FMRadioEngineer.showToast: toast = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 1050
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.startAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method private stopAnimation()V
    .locals 0

    .prologue
    .line 1059
    return-void
.end method

.method private switchRecordLayout(Z)V
    .locals 2
    .param p1, "recordingMode"    # Z

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1279
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->invalidateOptionsMenu()V

    .line 1282
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1283
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1284
    if-eqz p1, :cond_0

    const v1, 0x7f090075

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1293
    return-void

    .line 1285
    :cond_0
    const v1, 0x7f09004c

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 2
    .param p1, "station"    # I

    .prologue
    const/4 v0, 0x0

    .line 1121
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1122
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1123
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1124
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1125
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->tuneStationAsync(F)V

    .line 1126
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 1127
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1129
    :cond_0
    return-void
.end method

.method private updateCurrentStation()V
    .locals 3

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->getFrequency()I

    move-result v0

    .line 1614
    .local v0, "freq":I
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1615
    iget v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    if-eq v1, v0, :cond_0

    .line 1616
    const-string v1, "FmRx/Activity"

    const-string v2, "frequency in service isn\'t same as in database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iput v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 1618
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 1619
    iget v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshStationUI(I)V

    .line 1622
    :cond_0
    return-void
.end method

.method private updateDialogStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1628
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus.mIsNeedShowSearchDlg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isScanning()Z

    move-result v0

    .line 1632
    .local v0, "isScan":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    if-eqz v1, :cond_0

    .line 1633
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus: show search dialog. isScan is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    .line 1635
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->showSearchDialog()V

    .line 1639
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    if-eqz v1, :cond_1

    .line 1640
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDialogStatus.resume recordDlg.mPrevRecorderState:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1641
    iget v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1640
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->showSaveRecordingDialog()V

    .line 1643
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    .line 1655
    :cond_1
    return-void
.end method

.method private updateMenuStatus()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1661
    iget-object v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v6}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v2

    .line 1662
    .local v2, "isPlaying":Z
    iget-object v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v6}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUping()Z

    move-result v3

    .line 1663
    .local v3, "isPoweruping":Z
    iget-object v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v6}, Lcom/mediatek/fmradio/FmRadioService;->isSeeking()Z

    move-result v5

    .line 1664
    .local v5, "isSeeking":Z
    iget-object v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v6}, Lcom/mediatek/fmradio/FmRadioService;->isScanning()Z

    move-result v4

    .line 1665
    .local v4, "isScan":Z
    iget-object v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v6}, Lcom/mediatek/fmradio/FmRadioService;->isMakePowerDown()Z

    move-result v1

    .line 1666
    .local v1, "isMakePowerdown":Z
    const-string v6, "FmRx/Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "updateMenuStatus.isSeeking:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    move v0, v7

    .line 1670
    .local v0, "fmStatus":Z
    :goto_0
    if-eqz v0, :cond_4

    move v6, v7

    :goto_1
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1671
    if-eqz v0, :cond_5

    move v6, v7

    :goto_2
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1672
    if-eqz v0, :cond_6

    move v6, v7

    :goto_3
    invoke-direct {p0, v6}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1675
    const-string v6, "FmRx/Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "updateMenuStatus.mIsNeedDisablePower: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    if-eqz v0, :cond_7

    :cond_0
    :goto_4
    invoke-direct {p0, v7}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1680
    if-nez v5, :cond_1

    if-eqz v3, :cond_2

    .line 1681
    :cond_1
    const-string v6, "FmRx/Activity"

    const-string v7, "updateMenuStatus. it is seeking or poweruping"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->startAnimation()V

    .line 1684
    :cond_2
    return-void

    .end local v0    # "fmStatus":Z
    :cond_3
    move v0, v8

    .line 1667
    goto :goto_0

    .restart local v0    # "fmStatus":Z
    :cond_4
    move v6, v2

    .line 1670
    goto :goto_1

    :cond_5
    move v6, v2

    .line 1671
    goto :goto_2

    :cond_6
    move v6, v2

    .line 1672
    goto :goto_3

    .line 1677
    :cond_7
    if-nez v2, :cond_8

    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    if-nez v6, :cond_0

    :cond_8
    move v7, v8

    goto :goto_4
.end method

.method private updateRds()V
    .locals 4

    .prologue
    .line 1595
    iget-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 1596
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1597
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "key_ps_info"

    iget-object v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->getPS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v2, "key_rt_info"

    iget-object v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->getLRText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 1600
    const v3, 0x100011

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1601
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1602
    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1604
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateRecorderError(I)V
    .locals 4
    .param p1, "errorType"    # I

    .prologue
    .line 575
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateRecorderError.errorType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v0, 0x0

    .line 579
    .local v0, "showString":Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshRecordIdle()V

    .line 580
    sparse-switch p1, :sswitch_data_0

    .line 607
    const-string v1, "FmRx/Activity"

    const-string v2, "invalid recorder error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 612
    return-void

    .line 582
    :sswitch_0
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    goto :goto_0

    .line 586
    :sswitch_1
    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 587
    goto :goto_0

    .line 590
    :sswitch_2
    const v1, 0x7f09007a

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    goto :goto_0

    .line 594
    :sswitch_3
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    goto :goto_0

    .line 598
    :sswitch_4
    const v1, 0x7f090086

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->isRecordFileExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPlaybackIdle(Z)V

    goto :goto_0

    .line 604
    :sswitch_5
    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    goto :goto_0

    .line 580
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateRecordingState(I)V
    .locals 3
    .param p1, "recorderState"    # I

    .prologue
    const/16 v2, 0x65

    .line 544
    iput p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    .line 545
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshRecordingStatus(I)V

    .line 547
    packed-switch p1, :pswitch_data_0

    .line 564
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    :goto_0
    return-void

    .line 549
    :pswitch_0
    const v0, 0x7f090077

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 550
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 555
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 559
    :pswitch_2
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:remove message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 1558
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.cancelSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    .line 1560
    return-void
.end method

.method public noAntennaCancel()V
    .locals 2

    .prologue
    .line 1583
    const-string v0, "FmRx/Activity"

    const-string v1, " onClick Negative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1585
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->exitService()V

    .line 1589
    :goto_0
    return-void

    .line 1587
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "No need exit Service and Activity cause current is lock mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public noAntennaContinue()V
    .locals 2

    .prologue
    .line 1569
    const-string v0, "FmRx/Activity"

    const-string v1, " noAntennaContinue.onClick ok to continue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->powerUpFm()V

    .line 1576
    :goto_0
    return-void

    .line 1573
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "noAntennaContinue.earphone is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1014
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    .line 1015
    if-eq v4, p1, :cond_0

    .line 1016
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Invalid requestcode."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :goto_0
    return-void

    .line 1020
    :cond_0
    const-string v1, "ACTIVITY_RESULT"

    iget v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 1019
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1022
    .local v0, "iStation":I
    iput v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I

    .line 1026
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    .line 1027
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityForReult:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedDisablePower:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v1, :cond_1

    .line 1029
    const-string v1, "FmRx/Activity"

    const-string v2, "activity.onActivityResult mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput-boolean v4, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mNeedTuneto:Z

    goto :goto_0

    .line 1033
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V

    goto :goto_0

    .line 1040
    .end local v0    # "iStation":I
    :cond_2
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The activity for requestcode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1041
    const-string v3, " does not return any data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1040
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1210
    const-string v1, "FmRx/Activity"

    const-string v2, "begin FMRadioEngineer.onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-boolean v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    if-eqz v1, :cond_1

    .line 1213
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FMRadioEngineer;->changeRecordingMode(Z)V

    .line 1214
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-nez v1, :cond_0

    .line 1215
    const-string v1, "FmRx/Activity"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :goto_0
    return-void

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v0

    .line 1220
    .local v0, "isPlaying":Z
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1221
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1222
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1223
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    goto :goto_0

    .line 1228
    .end local v0    # "isPlaying":Z
    :cond_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUping()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1229
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshImageButton(Z)V

    .line 1230
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuItem(Z)V

    .line 1231
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshPopupMenuItem(Z)V

    .line 1232
    invoke-direct {p0, v3}, Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V

    .line 1233
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->exitService()V

    goto :goto_0

    .line 1237
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1238
    const-string v1, "FmRx/Activity"

    const-string v2, "end FMRadioEngineer.onBackPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 662
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 663
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->setVolumeControlStream(I)V

    .line 666
    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->setContentView(I)V

    .line 667
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    .line 668
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    .line 670
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioStation;->initFmDatabase(Landroid/content/Context;)V

    .line 671
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->initUiComponent()V

    .line 672
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->registerButtonClickListener()V

    .line 673
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mAudioManager:Landroid/media/AudioManager;

    .line 675
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 677
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.onCreate end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioEngineer.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 866
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->unregisterFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V

    .line 869
    :cond_0
    iput-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;

    .line 871
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioEngineer.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 873
    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 3
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 1446
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popmenu dismiss listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->invalidateOptionsMenu()V

    .line 1448
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 804
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioEngineer.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    .line 833
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioEngineer.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 835
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 769
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.onResume start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsActivityForeground:Z

    .line 782
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.onResume end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1382
    const/4 v1, 0x5

    .line 1383
    .local v1, "size":I
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 1384
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "isInRecordingMode"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsInRecordingMode:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1385
    const-string v2, "mPrevRecorderState"

    iget v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mPrevRecorderState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1386
    const-string v2, "mIsFreshRecordingStatus"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowRecordDlg:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1388
    const-string v2, "mIsNeedShowSearchDlg"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1389
    const-string v2, "mRecordState"

    iget v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mRecordState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1390
    const-string v2, "mIsPlaying"

    iget-boolean v3, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1391
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRetainNonConfigurationInstance() bundle:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1397
    const-string v0, "FmRx/Activity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1399
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 738
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 739
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->setActivityIsOnStop(Z)V

    .line 740
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.onStart start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v0, Landroid/content/Intent;

    .line 743
    const-class v1, Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 742
    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 744
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_0
    return-void

    .line 748
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceStarted:Z

    .line 749
    new-instance v0, Landroid/content/Intent;

    .line 750
    const-class v1, Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 749
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 753
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    if-nez v0, :cond_1

    .line 754
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->finish()V

    goto :goto_0

    .line 758
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->restoreConfiguration()V

    .line 759
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.onStart end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 843
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->setActivityIsOnStop(Z)V

    .line 844
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioEngineer.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->unbindService(Landroid/content/ServiceConnection;)V

    .line 847
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsServiceBinded:Z

    .line 849
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z

    .line 850
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioEngineer.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 852
    return-void
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 1474
    invoke-static {}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->newInstance()Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 1475
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1476
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1477
    return-void
.end method

.method public showSaveRecordingDialog()V
    .locals 0

    .prologue
    .line 1492
    return-void
.end method

.method public stopfm()V
    .locals 2

    .prologue
    .line 449
    const-string v0, "FmRx/Activity"

    const-string v1, " stopfm "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-boolean v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/mediatek/fmradio/FMRadioEngineer;->exitService()V

    .line 456
    :cond_0
    return-void
.end method

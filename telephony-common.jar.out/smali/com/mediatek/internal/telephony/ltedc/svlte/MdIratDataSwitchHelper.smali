.class public Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;
.super Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;
.source "MdIratDataSwitchHelper.java"


# static fields
.field private static final PROPERTY_4G_SIM:Ljava/lang/String; = "persist.radio.simswitch"


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V
    .locals 0
    .param p1, "svltePhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;)V

    .line 24
    return-void
.end method

.method private notifyDataConnectionAttached()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataConnectionAttached: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 104
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 107
    :cond_2
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method private notifyDataConnectionDetached()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataConnectionDetached: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 125
    :cond_2
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->getCurrentDataConnectionState(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "[IRAT_DSH]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v0, "[IRAT_DSH]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method protected onCdmaDataAllowUrc()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataAllowed from CDMA: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 50
    return-void
.end method

.method protected onCdmaDataAttached()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 29
    return-void
.end method

.method protected onCdmaDataDetached()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionDetached()V

    .line 39
    return-void
.end method

.method protected onCdmaSetDataAllowedDone()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected onGsmDataAllowUrc()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataAllowed from GSM: mPsServiceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 56
    return-void
.end method

.method protected onGsmSetDataAllowedDone()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onLteDataAttached()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 34
    return-void
.end method

.method protected onLteDataDetached()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionDetached()V

    .line 44
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "allowed"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataAllowed: allowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 69
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mPsServiceType:I

    if-nez v2, :cond_2

    .line 70
    const-string v2, "persist.radio.simswitch"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 71
    .local v0, "capabilityPhoneId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mSvltePhoneProxy:Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v1

    .line 72
    .local v1, "curPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CapabilityPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CurPhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->log(Ljava/lang/String;)V

    .line 74
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 87
    .end local v0    # "capabilityPhoneId":I
    .end local v1    # "curPhoneId":I
    :goto_0
    if-eqz p1, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 90
    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mLteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 80
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->mCdmaCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public syncAndNotifyAttachState()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratDataSwitchHelper;->notifyDataConnectionAttached()V

    .line 95
    return-void
.end method

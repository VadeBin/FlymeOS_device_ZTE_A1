.class public Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.super Ljava/lang/Object;
.source "BluetoothOppShareInfo.java"


# instance fields
.field public mCarrierName:Ljava/lang/String;

.field public mConfirm:I

.field public mCurrentBytes:I

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:I

.field public mUri:Landroid/net/Uri;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "direction"    # I
    .param p7, "destination"    # Ljava/lang/String;
    .param p8, "visibility"    # I
    .param p9, "confirm"    # I
    .param p10, "status"    # I
    .param p11, "totalBytes"    # I
    .param p12, "currentBytes"    # I
    .param p13, "timestamp"    # I
    .param p14, "mediaScanned"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCarrierName:Ljava/lang/String;

    .line 77
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 78
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 79
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 82
    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 83
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 84
    iput p8, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    .line 85
    iput p9, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    .line 86
    iput p10, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 87
    iput p11, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:I

    .line 88
    move/from16 v0, p12

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:I

    .line 89
    move/from16 v0, p13

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 90
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    .line 91
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIZLjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hint"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "mimetype"    # Ljava/lang/String;
    .param p6, "direction"    # I
    .param p7, "destination"    # Ljava/lang/String;
    .param p8, "visibility"    # I
    .param p9, "confirm"    # I
    .param p10, "status"    # I
    .param p11, "totalBytes"    # I
    .param p12, "currentBytes"    # I
    .param p13, "timestamp"    # I
    .param p14, "mediaScanned"    # Z
    .param p15, "carrier"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct/range {p0 .. p14}, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIIIZ)V

    .line 100
    iput-object p15, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCarrierName:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v1, :cond_0

    .line 126
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isObsolete()Z
    .locals 2

    .prologue
    .line 135
    const/16 v0, 0xc0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadyToStart()Z
    .locals 3

    .prologue
    const/16 v2, 0xbe

    const/4 v0, 0x1

    .line 108
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v1, :cond_1

    .line 109
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v1, v0, :cond_2

    .line 113
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-eq v1, v2, :cond_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/bluetooth/map/BluetoothMapAppParams;
.super Ljava/lang/Object;
.source "BluetoothMapAppParams.java"


# static fields
.field private static final ATTACHMENT:I = 0xa

.field private static final ATTACHMENT_LEN:I = 0x1

.field private static final CHARSET:I = 0x14

.field private static final CHARSET_LEN:I = 0x1

.field public static final CHARSET_NATIVE:I = 0x0

.field public static final CHARSET_UTF8:I = 0x1

.field private static final FILTER_MESSAGE_TYPE:I = 0x3

.field private static final FILTER_MESSAGE_TYPE_LEN:I = 0x1

.field public static final FILTER_NO_EMAIL:I = 0x4

.field public static final FILTER_NO_MMS:I = 0x8

.field public static final FILTER_NO_SMS_CDMA:I = 0x2

.field public static final FILTER_NO_SMS_GSM:I = 0x1

.field private static final FILTER_ORIGINATOR:I = 0x8

.field private static final FILTER_PERIOD_BEGIN:I = 0x4

.field private static final FILTER_PERIOD_END:I = 0x5

.field private static final FILTER_PRIORITY:I = 0x9

.field private static final FILTER_PRIORITY_LEN:I = 0x1

.field private static final FILTER_READ_STATUS:I = 0x6

.field private static final FILTER_READ_STATUS_LEN:I = 0x1

.field private static final FILTER_RECIPIENT:I = 0x7

.field private static final FOLDER_LISTING_SIZE:I = 0x11

.field private static final FOLDER_LISTING_SIZE_LEN:I = 0x2

.field private static final FRACTION_DELIVER:I = 0x16

.field public static final FRACTION_DELIVER_LAST:I = 0x1

.field private static final FRACTION_DELIVER_LEN:I = 0x1

.field public static final FRACTION_DELIVER_MORE:I = 0x0

.field private static final FRACTION_REQUEST:I = 0x15

.field public static final FRACTION_REQUEST_FIRST:I = 0x0

.field private static final FRACTION_REQUEST_LEN:I = 0x1

.field public static final FRACTION_REQUEST_NEXT:I = 0x1

.field public static final INVALID_VALUE_PARAMETER:I = -0x1

.field private static final MAS_INSTANCE_ID:I = 0xf

.field private static final MAS_INSTANCE_ID_LEN:I = 0x1

.field private static final MAX_LIST_COUNT:I = 0x1

.field private static final MAX_LIST_COUNT_LEN:I = 0x2

.field private static final MESSAGE_LISTING_SIZE:I = 0x12

.field private static final MESSAGE_LISTING_SIZE_LEN:I = 0x2

.field private static final MSE_TIME:I = 0x19

.field private static final NEW_MESSAGE:I = 0xd

.field private static final NEW_MESSAGE_LEN:I = 0x1

.field private static final NOTIFICATION_STATUS:I = 0xe

.field private static final NOTIFICATION_STATUS_LEN:I = 0x1

.field public static final NOTIFICATION_STATUS_NO:I = 0x0

.field public static final NOTIFICATION_STATUS_YES:I = 0x1

.field private static final PARAMETER_MASK:I = 0x10

.field public static final PARAMETER_MASK_ALL_ENABLED:J = 0xffffL

.field private static final PARAMETER_MASK_LEN:I = 0x4

.field private static final RETRY:I = 0xc

.field private static final RETRY_LEN:I = 0x1

.field private static final START_OFFSET:I = 0x2

.field private static final START_OFFSET_LEN:I = 0x2

.field private static final STATUS_INDICATOR:I = 0x17

.field public static final STATUS_INDICATOR_DELETED:I = 0x1

.field private static final STATUS_INDICATOR_LEN:I = 0x1

.field public static final STATUS_INDICATOR_READ:I = 0x0

.field private static final STATUS_VALUE:I = 0x18

.field private static final STATUS_VALUE_LEN:I = 0x1

.field public static final STATUS_VALUE_NO:I = 0x0

.field public static final STATUS_VALUE_YES:I = 0x1

.field private static final SUBJECT_LENGTH:I = 0x13

.field private static final SUBJECT_LENGTH_LEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapAppParams"

.field private static final TRANSPARENT:I = 0xb

.field private static final TRANSPARENT_LEN:I = 0x1


# instance fields
.field private mAttachment:I

.field private mCharset:I

.field private mFilterMessageType:I

.field private mFilterOriginator:Ljava/lang/String;

.field private mFilterPeriodBegin:J

.field private mFilterPeriodEnd:J

.field private mFilterPriority:I

.field private mFilterReadStatus:I

.field private mFilterRecipient:Ljava/lang/String;

.field private mFolderListingSize:I

.field private mFractionDeliver:I

.field private mFractionRequest:I

.field private mMasInstanceId:I

.field private mMaxListCount:I

.field private mMessageListingSize:I

.field private mMseTime:J

.field private mNewMessage:I

.field private mNotificationStatus:I

.field private mParameterMask:J

.field private mRetry:I

.field private mStartOffset:I

.field private mStatusIndicator:I

.field private mStatusValue:I

.field private mSubjectLength:I

.field private mTransparent:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 109
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 110
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 111
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 112
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 113
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 114
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 116
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 117
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 118
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 119
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 120
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 121
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 122
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 123
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 124
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 125
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 126
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 127
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 128
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 129
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 130
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 131
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 132
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 141
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "appParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 109
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 110
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 111
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 112
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 113
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 114
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 116
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 117
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 118
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 119
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 120
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 121
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 122
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 123
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 124
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 125
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 126
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 127
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 128
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 129
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 130
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 131
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 132
    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 162
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->ParseParams([B)V

    .line 163
    return-void
.end method

.method private ParseParams([B)V
    .locals 14
    .param p1, "appParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const v12, 0xffff

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "i":I
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    .local v0, "appParamBuf":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 183
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_15

    .line 184
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v5, p1, v1

    and-int/lit16 v3, v5, 0xff

    .line 185
    .local v3, "tagId":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, p1, v2

    and-int/lit16 v4, v5, 0xff

    .line 186
    .local v4, "tagLength":I
    packed-switch v3, :pswitch_data_0

    .line 372
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] Unknown TagId received ( 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v3, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), skipping..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    .line 188
    :pswitch_0
    if-eq v4, v11, :cond_1

    .line 189
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] MAX_LIST_COUNT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v12

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    goto :goto_1

    .line 196
    :pswitch_1
    if-eq v4, v11, :cond_2

    .line 197
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] START_OFFSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v12

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    goto :goto_1

    .line 204
    :pswitch_2
    if-eq v4, v10, :cond_3

    .line 205
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] FILTER_MESSAGE_TYPE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 209
    :cond_3
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterMessageType(I)V

    goto/16 :goto_1

    .line 212
    :pswitch_3
    if-eqz v4, :cond_0

    .line 213
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodBegin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    :pswitch_4
    if-eqz v4, :cond_0

    .line 218
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPeriodEnd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 222
    :pswitch_5
    if-eq v4, v10, :cond_4

    .line 223
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] FILTER_READ_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 227
    :cond_4
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterReadStatus(I)V

    goto/16 :goto_1

    .line 230
    :pswitch_6
    if-eqz v4, :cond_0

    .line 231
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterRecipient(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 235
    :pswitch_7
    if-eqz v4, :cond_0

    .line 236
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterOriginator(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :pswitch_8
    if-eq v4, v10, :cond_5

    .line 241
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] FILTER_PRIORITY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    :cond_5
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFilterPriority(I)V

    goto/16 :goto_1

    .line 248
    :pswitch_9
    if-eq v4, v10, :cond_6

    .line 249
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] ATTACHMENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 253
    :cond_6
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setAttachment(I)V

    goto/16 :goto_1

    .line 256
    :pswitch_a
    if-eq v4, v10, :cond_7

    .line 257
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] TRANSPARENT: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 261
    :cond_7
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setTransparent(I)V

    goto/16 :goto_1

    .line 264
    :pswitch_b
    if-eq v4, v10, :cond_8

    .line 265
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] RETRY: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 269
    :cond_8
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setRetry(I)V

    goto/16 :goto_1

    .line 272
    :pswitch_c
    if-eq v4, v10, :cond_9

    .line 273
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] NEW_MESSAGE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 277
    :cond_9
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    goto/16 :goto_1

    .line 280
    :pswitch_d
    if-eq v4, v10, :cond_a

    .line 281
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] NOTIFICATION_STATUS: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 285
    :cond_a
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNotificationStatus(I)V

    goto/16 :goto_1

    .line 288
    :pswitch_e
    if-eq v4, v10, :cond_b

    .line 289
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] MAS_INSTANCE_ID: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 293
    :cond_b
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    goto/16 :goto_1

    .line 296
    :pswitch_f
    if-eq v4, v13, :cond_c

    .line 297
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] PARAMETER_MASK: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 301
    :cond_c
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    goto/16 :goto_1

    .line 304
    :pswitch_10
    if-eq v4, v11, :cond_d

    .line 305
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] FOLDER_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 309
    :cond_d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v12

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    goto/16 :goto_1

    .line 312
    :pswitch_11
    if-eq v4, v11, :cond_e

    .line 313
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] MESSAGE_LISTING_SIZE: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 317
    :cond_e
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    and-int/2addr v5, v12

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    goto/16 :goto_1

    .line 320
    :pswitch_12
    if-eq v4, v10, :cond_f

    .line 321
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] SUBJECT_LENGTH: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    :cond_f
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setSubjectLength(I)V

    goto/16 :goto_1

    .line 328
    :pswitch_13
    if-eq v4, v10, :cond_10

    .line 329
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] CHARSET: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 333
    :cond_10
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setCharset(I)V

    goto/16 :goto_1

    .line 336
    :pswitch_14
    if-eq v4, v10, :cond_11

    .line 337
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] FRACTION_REQUEST: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 341
    :cond_11
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionRequest(I)V

    goto/16 :goto_1

    .line 344
    :pswitch_15
    if-eq v4, v10, :cond_12

    .line 345
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] FRACTION_DELIVER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    :cond_12
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    goto/16 :goto_1

    .line 352
    :pswitch_16
    if-eq v4, v10, :cond_13

    .line 353
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] STATUS_INDICATOR: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 357
    :cond_13
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusIndicator(I)V

    goto/16 :goto_1

    .line 360
    :pswitch_17
    if-eq v4, v10, :cond_14

    .line 361
    const-string v5, "[MAP]BluetoothMapAppParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ParseParams] STATUS_VALUER: Wrong length received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 365
    :cond_14
    aget-byte v5, p1, v1

    and-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStatusValue(I)V

    goto/16 :goto_1

    .line 368
    :pswitch_18
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v1, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 378
    .end local v3    # "tagId":I
    .end local v4    # "tagLength":I
    :cond_15
    return-void

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method private getParamMaxLength()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xf

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "length":I
    add-int/lit8 v0, v0, 0x32

    .line 391
    add-int/lit8 v0, v0, 0x1b

    .line 392
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x4d

    .line 393
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move v3, v2

    :cond_0
    add-int/2addr v0, v3

    .line 394
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    :goto_1
    add-int/2addr v0, v2

    .line 399
    return v0

    :cond_3
    move v1, v3

    .line 392
    goto :goto_0

    .line 398
    :cond_4
    const/16 v2, 0x14

    goto :goto_1
.end method


# virtual methods
.method public EncodeParams()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const-wide/16 v8, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 410
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParamMaxLength()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 411
    .local v0, "appParamBuf":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 414
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 415
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 416
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 417
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 420
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 421
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 422
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 425
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 426
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 427
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    .line 430
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 432
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBeginString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 434
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    .line 435
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 436
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 437
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEndString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 439
    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 440
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 442
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 445
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 446
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 449
    :cond_6
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 450
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 451
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 452
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 454
    :cond_7
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    if-eq v2, v4, :cond_8

    .line 455
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 456
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 459
    :cond_8
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    if-eq v2, v4, :cond_9

    .line 460
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 462
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 464
    :cond_9
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    if-eq v2, v4, :cond_a

    .line 465
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 466
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 467
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getTransparent()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 469
    :cond_a
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    if-eq v2, v4, :cond_b

    .line 470
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 471
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 472
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getRetry()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 474
    :cond_b
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    if-eq v2, v4, :cond_c

    .line 475
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 476
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNewMessage()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 479
    :cond_c
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    if-eq v2, v4, :cond_d

    .line 480
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 481
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 482
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 484
    :cond_d
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    if-eq v2, v4, :cond_e

    .line 485
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 486
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMasInstanceId()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 489
    :cond_e
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_f

    .line 490
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 491
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 492
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 494
    :cond_f
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    if-eq v2, v4, :cond_10

    .line 495
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 496
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 497
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFolderListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 499
    :cond_10
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    if-eq v2, v4, :cond_11

    .line 500
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 501
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 502
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMessageListingSize()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 504
    :cond_11
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    if-eq v2, v4, :cond_12

    .line 505
    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 506
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 507
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 509
    :cond_12
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    if-eq v2, v4, :cond_13

    .line 510
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 511
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 512
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 514
    :cond_13
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    if-eq v2, v4, :cond_14

    .line 515
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 519
    :cond_14
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    if-eq v2, v4, :cond_15

    .line 520
    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionDeliver()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 524
    :cond_15
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    if-eq v2, v4, :cond_16

    .line 525
    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 526
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 527
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    :cond_16
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    if-eq v2, v4, :cond_17

    .line 530
    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 531
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 532
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 534
    :cond_17
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-eqz v2, :cond_18

    .line 535
    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 536
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 537
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTimeString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 540
    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 542
    .local v1, "retBuf":[B
    return-object v1
.end method

.method public getAttachment()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    return v0
.end method

.method public getCharset()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    return v0
.end method

.method public getFilterMessageType()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    return v0
.end method

.method public getFilterOriginator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterPeriodBegin()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    return-wide v0
.end method

.method public getFilterPeriodBeginString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 580
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 582
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPeriodEnd()J
    .locals 2

    .prologue
    .line 596
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    return-wide v0
.end method

.method public getFilterPeriodEndString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 600
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 601
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 602
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFilterPriority()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    return v0
.end method

.method public getFilterReadStatus()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    return v0
.end method

.method public getFilterRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderListingSize()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    return v0
.end method

.method public getFractionDeliver()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    return v0
.end method

.method public getFractionRequest()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    return v0
.end method

.method public getMasInstanceId()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    return v0
.end method

.method public getMaxListCount()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    return v0
.end method

.method public getMessageListingSize()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    return v0
.end method

.method public getMseTime()J
    .locals 2

    .prologue
    .line 802
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    return-wide v0
.end method

.method public getMseTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 806
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 807
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMseTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 808
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNewMessage()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    return v0
.end method

.method public getNotificationStatus()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    return v0
.end method

.method public getParameterMask()J
    .locals 2

    .prologue
    .line 712
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    return-wide v0
.end method

.method public getRetry()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    return v0
.end method

.method public getStatusIndicator()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    return v0
.end method

.method public getStatusValue()I
    .locals 1

    .prologue
    .line 792
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    return v0
.end method

.method public getSubjectLength()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    return v0
.end method

.method public getTransparent()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    return v0
.end method

.method public setAttachment(I)V
    .locals 2
    .param p1, "attachment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 656
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mAttachment:I

    .line 659
    return-void
.end method

.method public setCharset(I)V
    .locals 3
    .param p1, "charset"    # I

    .prologue
    .line 756
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", valid range is 0x0000 to 0x0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mCharset:I

    .line 759
    return-void
.end method

.method public setFilterMessageType(I)V
    .locals 2
    .param p1, "filterMessageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 570
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x000F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterMessageType:I

    .line 573
    return-void
.end method

.method public setFilterOriginator(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterOriginator"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterOriginator:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setFilterPeriodBegin(J)V
    .locals 1
    .param p1, "filterPeriodBegin"    # J

    .prologue
    .line 586
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 587
    return-void
.end method

.method public setFilterPeriodBegin(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodBegin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 592
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodBegin:J

    .line 593
    return-void
.end method

.method public setFilterPeriodEnd(J)V
    .locals 1
    .param p1, "filterPeriodEnd"    # J

    .prologue
    .line 606
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 607
    return-void
.end method

.method public setFilterPeriodEnd(Ljava/lang/String;)V
    .locals 4
    .param p1, "filterPeriodEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 611
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 612
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPeriodEnd:J

    .line 613
    return-void
.end method

.method public setFilterPriority(I)V
    .locals 2
    .param p1, "filterPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 646
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterPriority:I

    .line 649
    return-void
.end method

.method public setFilterReadStatus(I)V
    .locals 2
    .param p1, "filterReadStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 620
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 621
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterReadStatus:I

    .line 623
    return-void
.end method

.method public setFilterRecipient(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterRecipient"    # Ljava/lang/String;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFilterRecipient:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setFolderListingSize(I)V
    .locals 2
    .param p1, "folderListingSize"    # I

    .prologue
    .line 726
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 727
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFolderListingSize:I

    .line 729
    return-void
.end method

.method public setFractionDeliver(I)V
    .locals 2
    .param p1, "fractionDeliver"    # I

    .prologue
    .line 776
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 777
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionDeliver:I

    .line 779
    return-void
.end method

.method public setFractionRequest(I)V
    .locals 2
    .param p1, "fractionRequest"    # I

    .prologue
    .line 766
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 767
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mFractionRequest:I

    .line 769
    return-void
.end method

.method public setMasInstanceId(I)V
    .locals 2
    .param p1, "masInstanceId"    # I

    .prologue
    .line 706
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMasInstanceId:I

    .line 709
    return-void
.end method

.method public setMaxListCount(I)V
    .locals 2
    .param p1, "maxListCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 550
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMaxListCount:I

    .line 553
    return-void
.end method

.method public setMessageListingSize(I)V
    .locals 2
    .param p1, "messageListingSize"    # I

    .prologue
    .line 736
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 737
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMessageListingSize:I

    .line 739
    return-void
.end method

.method public setMseTime(J)V
    .locals 1
    .param p1, "mseTime"    # J

    .prologue
    .line 812
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 813
    return-void
.end method

.method public setMseTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "mseTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 816
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmssZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 817
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 818
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mMseTime:J

    .line 819
    return-void
.end method

.method public setNewMessage(I)V
    .locals 2
    .param p1, "newMessage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 686
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 688
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNewMessage:I

    .line 689
    return-void
.end method

.method public setNotificationStatus(I)V
    .locals 2
    .param p1, "notificationStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 696
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mNotificationStatus:I

    .line 699
    return-void
.end method

.method public setParameterMask(J)V
    .locals 3
    .param p1, "parameterMask"    # J

    .prologue
    .line 716
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFFFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_1
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mParameterMask:J

    .line 719
    return-void
.end method

.method public setRetry(I)V
    .locals 2
    .param p1, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 676
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mRetry:I

    .line 679
    return-void
.end method

.method public setStartOffset(I)V
    .locals 2
    .param p1, "startOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 560
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0xFFFF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStartOffset:I

    .line 563
    return-void
.end method

.method public setStatusIndicator(I)V
    .locals 2
    .param p1, "statusIndicator"    # I

    .prologue
    .line 786
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 787
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusIndicator:I

    .line 789
    return-void
.end method

.method public setStatusValue(I)V
    .locals 2
    .param p1, "statusValue"    # I

    .prologue
    .line 796
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mStatusValue:I

    .line 799
    return-void
.end method

.method public setSubjectLength(I)V
    .locals 2
    .param p1, "subjectLength"    # I

    .prologue
    .line 746
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 747
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x00FF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mSubjectLength:I

    .line 749
    return-void
.end method

.method public setTransparent(I)V
    .locals 2
    .param p1, "transparent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 666
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Out of range, valid range is 0x0000 to 0x0001"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapAppParams;->mTransparent:I

    .line 669
    return-void
.end method

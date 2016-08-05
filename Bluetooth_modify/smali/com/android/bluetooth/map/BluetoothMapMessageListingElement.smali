.class public Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListingElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapMessageListingElement"

.field private static final V:Z


# instance fields
.field private mAttachmentSize:I

.field private mCpHandle:J

.field private mCursorIndex:I

.field private mDateTime:J

.field private mPriority:Ljava/lang/String;

.field private mProtect:Ljava/lang/String;

.field private mRead:Z

.field private mReceptionStatus:Ljava/lang/String;

.field private mRecipientAddressing:Ljava/lang/String;

.field private mRecipientName:Ljava/lang/String;

.field private mReplytoAddressing:Ljava/lang/String;

.field private mReportRead:Z

.field private mSenderAddressing:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field private mSent:Ljava/lang/String;

.field private mSize:I

.field private mSubject:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mThreadId:Ljava/lang/String;

.field private mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    .line 44
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 45
    iput-wide v4, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    .line 46
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 52
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    .line 53
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    .line 56
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    .line 58
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    .line 62
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return-void
.end method

.method private static stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-array v5, v6, [C

    .line 245
    .local v5, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "o":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "l":I
    move v4, v3

    .end local v3    # "o":I
    .local v4, "o":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 246
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 247
    .local v0, "c":C
    const/16 v6, 0x20

    if-lt v0, v6, :cond_0

    const v6, 0xd7ff

    if-le v0, v6, :cond_1

    :cond_0
    const v6, 0xe000

    if-lt v0, v6, :cond_4

    const v6, 0xfffd

    if-gt v0, v6, :cond_4

    .line 248
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "o":I
    .restart local v3    # "o":I
    aput-char v0, v5, v4

    .line 245
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "o":I
    .restart local v4    # "o":I
    goto :goto_0

    .line 252
    .end local v0    # "c":C
    :cond_2
    if-ne v1, v4, :cond_3

    .line 255
    .end local p0    # "text":Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "text":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .restart local v0    # "c":C
    .restart local p0    # "text":Ljava/lang/String;
    :cond_4
    move v3, v4

    .end local v4    # "o":I
    .restart local v3    # "o":I
    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I
    .locals 4
    .param p1, "e"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    iget-wide v2, p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 228
    const/4 v0, -0x1

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->compareTo(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)I

    move-result v0

    return v0
.end method

.method public encode(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 6
    .param p1, "xmlMsgElement"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "includeThreadId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 264
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->removeInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils;->isLegalArgument(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v0, "msg"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    const-string v0, "handle"

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-static {v2, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 284
    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    :cond_2
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 286
    const-string v0, "datetime"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getDateTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 288
    const-string v0, "sender_name"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 290
    const-string v0, "sender_addressing"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 292
    const-string v0, "replyto_addressing"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 294
    const-string v0, "recipient_name"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->stripInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 296
    const-string v0, "recipient_addressing"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-eqz v0, :cond_9

    .line 298
    const-string v0, "type"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    :cond_9
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    if-eq v0, v5, :cond_a

    .line 300
    const-string v0, "size"

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 302
    const-string v0, "text"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 304
    const-string v0, "reception_status"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    :cond_c
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    if-eq v0, v5, :cond_d

    .line 306
    const-string v0, "attachment_size"

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 308
    const-string v0, "priority"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    :cond_e
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    if-eqz v0, :cond_f

    .line 310
    const-string v0, "read"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRead()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 312
    const-string v0, "sent"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    :cond_10
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 314
    const-string v0, "protected"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    if-ne p2, v0, :cond_12

    .line 316
    const-string v0, "thread_id"

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    :cond_12
    const-string v0, "msg"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0
.end method

.method public getAttachmentSize()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    return v0
.end method

.method public getCursorIndex()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    return v0
.end method

.method public getDateTime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    return-wide v0
.end method

.method public getDateTimeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 87
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    return-wide v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    return-object v0
.end method

.method public getProtect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public getReadBool()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    return v0
.end method

.method public getReceptionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyToAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public setAttachmentSize(I)V
    .locals 0
    .param p1, "attachmentSize"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mAttachmentSize:I

    .line 180
    return-void
.end method

.method public setCursorIndex(I)V
    .locals 0
    .param p1, "cursorIndex"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCursorIndex:I

    .line 70
    return-void
.end method

.method public setDateTime(J)V
    .locals 1
    .param p1, "dateTime"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mDateTime:J

    .line 92
    return-void
.end method

.method public setHandle(J)V
    .locals 1
    .param p1, "handle"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mCpHandle:J

    .line 78
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mPriority:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setProtect(Ljava/lang/String;)V
    .locals 0
    .param p1, "protect"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mProtect:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setRead(ZZ)V
    .locals 0
    .param p1, "read"    # Z
    .param p2, "reportRead"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRead:Z

    .line 199
    iput-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReportRead:Z

    .line 200
    return-void
.end method

.method public setReceptionStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "receptionStatus"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReceptionStatus:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setRecipientAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientAddressing"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientAddressing:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setRecipientName(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientName"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mRecipientName:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setReplytoAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "replytoAddressing"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mReplytoAddressing:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSenderAddressing(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderAddressing"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderAddressing:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSenderName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "sent"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSent:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSize:I

    .line 156
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mSubject:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mText:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setThreadId(J)V
    .locals 3
    .param p1, "threadId"    # J

    .prologue
    .line 219
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getLongAsString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mThreadId:Ljava/lang/String;

    .line 222
    :cond_0
    return-void
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0
    .param p1, "type"    # Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 148
    return-void
.end method

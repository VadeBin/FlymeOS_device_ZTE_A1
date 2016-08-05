.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMms;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageMms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    }
.end annotation


# instance fields
.field private bcc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private cc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private contentType:Ljava/lang/String;

.field private date:J

.field private encoding:Ljava/lang/String;

.field private from:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private hasHeaders:Z

.field private includeAttachments:Z

.field private messageId:Ljava/lang/String;

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;",
            ">;"
        }
    .end annotation
.end field

.field private replyTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private sender:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Ljava/lang/String;

.field private textOnly:Z

.field private to:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 124
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->date:J

    .line 125
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    .line 127
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    .line 128
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    .line 129
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    .line 130
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    .line 131
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    .line 132
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->messageId:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    .line 134
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    .line 136
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->textOnly:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->hasHeaders:Z

    .line 139
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encoding:Ljava/lang/String;

    return-void
.end method

.method private decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 625
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BASE64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 638
    :goto_0
    return-object v0

    .line 627
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    invoke-static {p1, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 633
    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 638
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoundary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--=_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method private parseMms(Ljava/lang/String;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 651
    const/4 v5, 0x0

    .line 652
    .local v5, "remaining":Ljava/lang/String;
    const/4 v1, 0x0

    .line 653
    .local v1, "messageBody":Ljava/lang/String;
    const-string v6, "\\r\\n[ \\\t]+"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 654
    const-string v6, "\r\n\r\n"

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "messageParts":[Ljava/lang/String;
    array-length v6, v2

    if-eq v6, v8, :cond_2

    .line 657
    move-object v1, p1

    .line 671
    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 674
    invoke-direct {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parseMmsMimeBody(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->setTextOnly(Z)V

    .line 676
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 677
    const-string v6, "text/plain"

    iput-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    .line 678
    :cond_0
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    .line 691
    :cond_1
    return-void

    .line 661
    :cond_2
    aget-object v6, v2, v10

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parseMmsHeaders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 663
    if-eqz v5, :cond_3

    .line 664
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseMms remaining="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_3
    aget-object v1, v2, v9

    goto :goto_0

    .line 682
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "mimeParts":[Ljava/lang/String;
    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimePart count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1

    .line 686
    aget-object v4, v3, v0

    .line 687
    .local v4, "part":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 688
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parseMmsMimePart(Ljava/lang/String;)V

    .line 685
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseMmsHeaders(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "hdrPart"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v13, "\r\n"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "headers":[Ljava/lang/String;
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header count="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v7

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->hasHeaders:Z

    .line 474
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v1, v7

    .local v1, "c":I
    :goto_0
    if-ge v8, v1, :cond_10

    .line 475
    aget-object v3, v7, v8

    .line 476
    .local v3, "header":Ljava/lang/String;
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Header["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-ne v13, v14, :cond_1

    .line 474
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 483
    :cond_1
    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "headerParts":[Ljava/lang/String;
    array-length v13, v4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 486
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v11, "remaining":Ljava/lang/StringBuilder;
    :goto_2
    if-ge v8, v1, :cond_2

    .line 488
    aget-object v13, v7, v8

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 490
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 546
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v11    # "remaining":Ljava/lang/StringBuilder;
    :goto_3
    return-object v13

    .line 493
    .restart local v3    # "header":Ljava/lang/String;
    .restart local v4    # "headerParts":[Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, "headerType":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, "headerValue":Ljava/lang/String;
    const-string v13, "FROM"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 501
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 502
    .local v12, "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    goto :goto_1

    .line 503
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_4
    const-string v13, "TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 504
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 505
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    goto :goto_1

    .line 506
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_5
    const-string v13, "CC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 507
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 508
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    goto :goto_1

    .line 509
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_6
    const-string v13, "BCC"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 510
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 511
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 512
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_7
    const-string v13, "REPLY-TO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 513
    invoke-static {v6}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v12

    .line 514
    .restart local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 515
    .end local v12    # "tokens":[Landroid/text/util/Rfc822Token;
    :cond_8
    const-string v13, "SUBJECT"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 516
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    goto/16 :goto_1

    .line 517
    :cond_9
    const-string v13, "MESSAGE-ID"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 518
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->messageId:Ljava/lang/String;

    goto/16 :goto_1

    .line 519
    :cond_a
    const-string v13, "DATE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 522
    const-string v13, "MIME-VERSION"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 524
    const-string v13, "CONTENT-TYPE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 525
    const-string v13, ";"

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "contentTypeParts":[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v2, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    .line 528
    const/4 v9, 0x1

    .local v9, "j":I
    array-length v10, v2

    .local v10, "n":I
    :goto_4
    if-ge v9, v10, :cond_0

    .line 530
    aget-object v13, v2, v9

    const-string v14, "boundary"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 531
    aget-object v13, v2, v9

    const-string v14, "boundary[\\s]*="

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    .line 533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_b

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    .line 535
    :cond_b
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Boundary tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->boundary:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_c
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 536
    :cond_d
    aget-object v13, v2, v9

    const-string v14, "charset"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 537
    aget-object v13, v2, v9

    const-string v14, "charset[\\s]*="

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->mCharset:Ljava/lang/String;

    goto :goto_5

    .line 540
    .end local v2    # "contentTypeParts":[Ljava/lang/String;
    .end local v9    # "j":I
    .end local v10    # "n":I
    :cond_e
    const-string v13, "CONTENT-TRANSFER-ENCODING"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 541
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 543
    :cond_f
    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping unknown header: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 546
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "headerParts":[Ljava/lang/String;
    .end local v5    # "headerType":Ljava/lang/String;
    .end local v6    # "headerValue":Ljava/lang/String;
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_3
.end method

.method private parseMmsMimeBody(Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    move-result-object v0

    .line 620
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->mCharset:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mCharsetName:Ljava/lang/String;

    .line 621
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encoding:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->mCharset:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    .line 622
    return-void
.end method

.method private parseMmsMimePart(Ljava/lang/String;)V
    .locals 22
    .param p1, "partStr"    # Ljava/lang/String;

    .prologue
    .line 550
    const-string v19, "\r\n\r\n"

    const/16 v20, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    .line 551
    .local v17, "parts":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    move-result-object v15

    .line 552
    .local v15, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encoding:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 555
    .local v16, "partEncoding":Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v17, v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 556
    .local v10, "headers":[Ljava/lang/String;
    sget-object v19, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "parseMmsMimePart: headers count="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v10

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 559
    move-object/from16 v4, p1

    .line 615
    .local v4, "body":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v0, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mCharsetName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->decodeBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    .line 616
    return-void

    .line 561
    .end local v4    # "body":Ljava/lang/String;
    :cond_1
    move-object v3, v10

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v13, :cond_b

    aget-object v6, v3, v11

    .line 563
    .local v6, "header":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, "--"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 561
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 566
    :cond_3
    const-string v19, ":"

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 567
    .local v7, "headerParts":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 568
    sget-object v19, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    const-string v20, "part-Header not formatted correctly: "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 571
    :cond_4
    sget-object v19, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "parseMmsMimePart: header="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/16 v19, 0x0

    aget-object v19, v7, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "headerType":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v7, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 574
    .local v9, "headerValue":Ljava/lang/String;
    const-string v19, "CONTENT-TYPE"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 575
    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, "contentTypeParts":[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v5, v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    .line 578
    const/4 v12, 0x1

    .local v12, "j":I
    array-length v14, v5

    .local v14, "n":I
    :goto_3
    if-ge v12, v14, :cond_2

    .line 580
    aget-object v19, v5, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 581
    .local v18, "value":Ljava/lang/String;
    const-string v19, "charset"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 582
    const-string v19, "charset[\\s]*="

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mCharsetName:Ljava/lang/String;

    .line 578
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 586
    .end local v5    # "contentTypeParts":[Ljava/lang/String;
    .end local v12    # "j":I
    .end local v14    # "n":I
    .end local v18    # "value":Ljava/lang/String;
    :cond_6
    const-string v19, "CONTENT-LOCATION"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 588
    iput-object v9, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    .line 589
    iput-object v9, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    goto/16 :goto_2

    .line 591
    :cond_7
    const-string v19, "CONTENT-TRANSFER-ENCODING"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 592
    move-object/from16 v16, v9

    goto/16 :goto_2

    .line 594
    :cond_8
    const-string v19, "CONTENT-ID"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 596
    iput-object v9, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    goto/16 :goto_2

    .line 598
    :cond_9
    const-string v19, "CONTENT-DISPOSITION"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 600
    iput-object v9, v15, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    goto/16 :goto_2

    .line 603
    :cond_a
    sget-object v19, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Skipping unknown part-header: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 606
    .end local v6    # "header":Ljava/lang/String;
    .end local v7    # "headerParts":[Ljava/lang/String;
    .end local v8    # "headerType":Ljava/lang/String;
    .end local v9    # "headerValue":Ljava/lang/String;
    :cond_b
    const/16 v19, 0x1

    aget-object v4, v17, v19

    .line 607
    .restart local v4    # "body":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 608
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 610
    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static quotedPrintableToUtf8(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 20
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    new-array v10, v14, [B

    .line 702
    .local v10, "output":[B
    const/4 v7, 0x0

    .line 704
    .local v7, "input":[B
    :try_start_0
    const-string v14, "US-ASCII"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 708
    :goto_0
    if-nez v7, :cond_0

    .line 709
    const-string v14, ""

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 784
    :goto_1
    return-object v14

    .line 712
    :cond_0
    array-length v14, v7

    add-int/lit8 v13, v14, -0x2

    .line 717
    .local v13, "stopCnt":I
    const/4 v5, 0x0

    .local v5, "in":I
    const/4 v8, 0x0

    .local v8, "out":I
    move v9, v8

    .end local v8    # "out":I
    .local v9, "out":I
    :goto_2
    if-ge v5, v13, :cond_13

    .line 718
    aget-byte v1, v7, v5

    .line 719
    .local v1, "b0":B
    const/16 v14, 0x3d

    if-ne v1, v14, :cond_f

    .line 720
    add-int/lit8 v5, v5, 0x1

    aget-byte v2, v7, v5

    .line 721
    .local v2, "b1":B
    add-int/lit8 v5, v5, 0x1

    aget-byte v3, v7, v5

    .line 722
    .local v3, "b2":B
    const/16 v14, 0xd

    if-ne v2, v14, :cond_1

    const/16 v14, 0xa

    if-ne v3, v14, :cond_1

    move v8, v9

    .line 717
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v9    # "out":I
    .restart local v8    # "out":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "out":I
    .restart local v9    # "out":I
    goto :goto_2

    .line 725
    .restart local v2    # "b1":B
    .restart local v3    # "b2":B
    :cond_1
    const/16 v14, 0x30

    if-lt v2, v14, :cond_2

    const/16 v14, 0x39

    if-le v2, v14, :cond_4

    :cond_2
    const/16 v14, 0x41

    if-lt v2, v14, :cond_3

    const/16 v14, 0x46

    if-le v2, v14, :cond_4

    :cond_3
    const/16 v14, 0x61

    if-lt v2, v14, :cond_e

    const/16 v14, 0x66

    if-gt v2, v14, :cond_e

    :cond_4
    const/16 v14, 0x30

    if-lt v3, v14, :cond_5

    const/16 v14, 0x39

    if-le v3, v14, :cond_7

    :cond_5
    const/16 v14, 0x41

    if-lt v3, v14, :cond_6

    const/16 v14, 0x46

    if-le v3, v14, :cond_7

    :cond_6
    const/16 v14, 0x61

    if-lt v3, v14, :cond_e

    const/16 v14, 0x66

    if-gt v3, v14, :cond_e

    .line 727
    :cond_7
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found hex number: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%c%c"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/16 v14, 0x39

    if-gt v2, v14, :cond_a

    add-int/lit8 v14, v2, -0x30

    int-to-byte v2, v14

    .line 732
    :cond_8
    :goto_4
    const/16 v14, 0x39

    if-gt v3, v14, :cond_c

    add-int/lit8 v14, v3, -0x30

    int-to-byte v3, v14

    .line 736
    :cond_9
    :goto_5
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resulting nibble values: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "b1=%x b2=%x"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "out":I
    .restart local v8    # "out":I
    shl-int/lit8 v14, v2, 0x4

    or-int/2addr v14, v3

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    .line 739
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resulting value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "0x%2x"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int/lit8 v19, v8, -0x1

    aget-byte v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 729
    .end local v8    # "out":I
    .restart local v9    # "out":I
    :cond_a
    const/16 v14, 0x46

    if-gt v2, v14, :cond_b

    add-int/lit8 v14, v2, -0x41

    add-int/lit8 v14, v14, 0xa

    int-to-byte v2, v14

    goto/16 :goto_4

    .line 730
    :cond_b
    const/16 v14, 0x66

    if-gt v2, v14, :cond_8

    add-int/lit8 v14, v2, -0x61

    add-int/lit8 v14, v14, 0xa

    int-to-byte v2, v14

    goto/16 :goto_4

    .line 733
    :cond_c
    const/16 v14, 0x46

    if-gt v3, v14, :cond_d

    add-int/lit8 v14, v3, -0x41

    add-int/lit8 v14, v14, 0xa

    int-to-byte v3, v14

    goto/16 :goto_5

    .line 734
    :cond_d
    const/16 v14, 0x66

    if-gt v3, v14, :cond_9

    add-int/lit8 v14, v3, -0x61

    add-int/lit8 v14, v14, 0xa

    int-to-byte v3, v14

    goto/16 :goto_5

    .line 742
    :cond_e
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    const-string v15, "Received wrongly quoted printable encoded text. Continuing at best effort..."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "out":I
    .restart local v8    # "out":I
    aput-byte v1, v10, v9

    .line 746
    add-int/lit8 v5, v5, -0x2

    .line 747
    goto/16 :goto_3

    .line 749
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v8    # "out":I
    .restart local v9    # "out":I
    :cond_f
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "out":I
    .restart local v8    # "out":I
    aput-byte v1, v10, v9

    goto/16 :goto_3

    .line 756
    .end local v1    # "b0":B
    :goto_6
    array-length v14, v7

    if-ge v5, v14, :cond_10

    .line 757
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "out":I
    .restart local v9    # "out":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "in":I
    .local v6, "in":I
    aget-byte v14, v7, v5

    aput-byte v14, v10, v8

    move v8, v9

    .end local v9    # "out":I
    .restart local v8    # "out":I
    move v5, v6

    .end local v6    # "in":I
    .restart local v5    # "in":I
    goto :goto_6

    .line 760
    :cond_10
    const/4 v11, 0x0

    .line 763
    .local v11, "result":Ljava/lang/String;
    if-nez p1, :cond_12

    .line 764
    const-string p1, "UTF-8"

    .line 777
    :cond_11
    :goto_7
    :try_start_1
    new-instance v12, Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v12, v10, v14, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11    # "result":Ljava/lang/String;
    .local v12, "result":Ljava/lang/String;
    move-object v11, v12

    .line 784
    .end local v12    # "result":Ljava/lang/String;
    .restart local v11    # "result":Ljava/lang/String;
    :goto_8
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    goto/16 :goto_1

    .line 766
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 768
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 769
    const-string p1, "UTF-8"
    :try_end_2
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 771
    :catch_0
    move-exception v4

    .line 772
    .local v4, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received unknown charset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - using UTF-8."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string p1, "UTF-8"

    goto :goto_7

    .line 778
    .end local v4    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v4

    .line 781
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    new-instance v12, Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "UTF-8"

    invoke-direct {v12, v10, v14, v8, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v11    # "result":Ljava/lang/String;
    .restart local v12    # "result":Ljava/lang/String;
    move-object v11, v12

    .line 782
    .end local v12    # "result":Ljava/lang/String;
    .restart local v11    # "result":Ljava/lang/String;
    goto :goto_8

    :catch_2
    move-exception v14

    goto :goto_8

    .line 705
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "in":I
    .end local v8    # "out":I
    .end local v11    # "result":Ljava/lang/String;
    .end local v13    # "stopCnt":I
    :catch_3
    move-exception v14

    goto/16 :goto_0

    .restart local v5    # "in":I
    .restart local v9    # "out":I
    .restart local v13    # "stopCnt":I
    :cond_13
    move v8, v9

    .end local v9    # "out":I
    .restart local v8    # "out":I
    goto :goto_6
.end method


# virtual methods
.method public addBcc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public addCc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public addFrom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    .line 172
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;-><init>()V

    .line 173
    .local v0, "newPart":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-object v0
.end method

.method public addReplyTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public addSender(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public addTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    new-instance v1, Landroid/text/util/Rfc822Token;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeMms()[B

    move-result-object v0

    return-object v0
.end method

.method public encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p3, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    const/4 v2, 0x0

    .line 320
    .local v2, "lineLength":I
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    .line 321
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 323
    .local v0, "address":Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 325
    .local v3, "partLength":I
    add-int v4, v2, v3

    const/16 v5, 0x3e6

    if-lt v4, v5, :cond_0

    .line 327
    const-string v4, "\r\n "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const/4 v2, 0x0

    .line 330
    :cond_0
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    add-int/2addr v2, v3

    .line 332
    goto :goto_0

    .line 333
    .end local v0    # "address":Landroid/text/util/Rfc822Token;
    .end local v3    # "partLength":I
    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    return-void
.end method

.method public encodeHeaders(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 347
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->date:J

    sget v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->INVALID_VALUE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "Date: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "Subject: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 364
    const-string v0, "From: \r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 366
    const-string v0, "From: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 368
    const-string v0, "Sender: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 373
    const-string v0, "To:  undisclosed-recipients:;\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 375
    const-string v0, "To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 377
    const-string v0, "Cc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 379
    const-string v0, "Bcc: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 381
    const-string v0, "Reply-To: "

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeHeaderAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 382
    :cond_9
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->includeAttachments:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 384
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 385
    const-string v0, "Message-Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 387
    const-string v0, "Content-Type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_b
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    return-void
.end method

.method public encodeMms()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 433
    .local v1, "count":I
    const-string v7, "8BIT"

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encoding:Ljava/lang/String;

    .line 435
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeHeaders(Ljava/lang/StringBuilder;)V

    .line 436
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 437
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getIncludeAttachments()Z

    move-result v7

    if-nez v7, :cond_0

    .line 438
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    .line 439
    .local v4, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    invoke-virtual {v4, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->encodePlainText(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 442
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    .line 443
    .restart local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    add-int/lit8 v1, v1, 0x1

    .line 444
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->getBoundary()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v1, v7, :cond_1

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v4, v5, v9, v7}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move v7, v8

    goto :goto_2

    .line 449
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "mmsBody":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 452
    const-string v7, "END:MSG"

    const-string v8, "/END\\:MSG"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 453
    .local v6, "tmpBody":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v6    # "tmpBody":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v7

    return-object v7

    .line 455
    :cond_3
    new-array v7, v8, [B

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getBcc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCc()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->date:J

    return-wide v0
.end method

.method public getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 178
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->date:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 179
    .local v0, "dateObj":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFrom()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIncludeAttachments()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->includeAttachments:Z

    return v0
.end method

.method public getMessageAsText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    const-string v3, "<Sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    .line 162
    .local v1, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    iget-object v3, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeParts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReplyTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSender()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "message_size":I
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    .line 300
    .local v2, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    iget-object v3, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 301
    goto :goto_0

    .line 303
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :cond_0
    return v1
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOnly()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->textOnly:Z

    return v0
.end method

.method public getTo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 0

    .prologue
    .line 800
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgPart"    # Ljava/lang/String;

    .prologue
    .line 792
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parseMms(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public setBcc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "bcc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->bcc:Ljava/util/ArrayList;

    .line 242
    return-void
.end method

.method public setCc(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "cc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->cc:Ljava/util/ArrayList;

    .line 231
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->contentType:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setDate(J)V
    .locals 1
    .param p1, "date"    # J

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->date:J

    .line 186
    return-void
.end method

.method public setFrom(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->from:Ljava/util/ArrayList;

    .line 198
    return-void
.end method

.method public setIncludeAttachments(Z)V
    .locals 0
    .param p1, "includeAttachments"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->includeAttachments:Z

    .line 279
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->messageId:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setReplyTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "replyTo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->replyTo:Ljava/util/ArrayList;

    .line 253
    return-void
.end method

.method public setSender(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "sender":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->sender:Ljava/util/ArrayList;

    .line 209
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->subject:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setTextOnly(Z)V
    .locals 0
    .param p1, "textOnly"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->textOnly:Z

    .line 273
    return-void
.end method

.method public setTo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->to:Ljava/util/ArrayList;

    .line 220
    return-void
.end method

.method public updateCharset()V
    .locals 4

    .prologue
    .line 284
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 285
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->mCharset:Ljava/lang/String;

    .line 286
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;

    .line 287
    .local v1, "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->mCharset:Ljava/lang/String;

    .line 290
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMms;->TAG:Ljava/lang/String;

    const-string v3, "Charset set to UTF-8"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "part":Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
    :cond_1
    return-void
.end method

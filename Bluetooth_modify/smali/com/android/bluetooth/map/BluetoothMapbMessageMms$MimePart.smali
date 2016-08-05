.class public Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;
.super Ljava/lang/Object;
.source "BluetoothMapbMessageMms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessageMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MimePart"
.end annotation


# instance fields
.field public mCharsetName:Ljava/lang/String;

.field public mContentDisposition:Ljava/lang/String;

.field public mContentId:Ljava/lang/String;

.field public mContentLocation:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mData:[B

.field public mFileName:Ljava/lang/String;

.field public mId:J

.field public mPartName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mId:J

    .line 36
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mCharsetName:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mFileName:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "boundaryTag"    # Ljava/lang/String;
    .param p3, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "Content-Type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mCharsetName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "charset=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mCharsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "Content-Location: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 86
    const-string v0, "Content-ID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 88
    const-string v0, "Content-Disposition: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentDisposition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    if-eqz v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    :cond_5
    const-string v0, "Content-Transfer-Encoding: 8BIT\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_6
    :goto_0
    if-eqz p3, :cond_7

    .line 105
    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_7
    return-void

    .line 100
    :cond_8
    const-string v0, "Content-Transfer-Encoding: Base64\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public encodePlainText(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/SMIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mPartName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "attachment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method getDataAsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "result":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mCharsetName:Ljava/lang/String;

    .line 52
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 53
    const-string v0, "UTF-8"

    .line 66
    :cond_0
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    move-object v2, v3

    .line 73
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 57
    :try_start_1
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    const-string v0, "UTF-8"
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received unknown charset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - using UTF-8."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "UTF-8"

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageMms$MimePart;->mData:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v2, v3

    .line 71
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1
.end method

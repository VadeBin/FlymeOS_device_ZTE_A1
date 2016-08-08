.class public Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageEmail.java"


# instance fields
.field private mEmailBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "bodyFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    const-string v3, "END:MSG"

    const-string v4, "/END\\:MSG"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "tmpBody":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v1    # "tmpBody":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v2

    return-object v2

    .line 73
    :cond_0
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->TAG:Ljava/lang/String;

    const-string v3, "Email has no body - this should not be possible"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 2
    .param p1, "msgPart"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEmailBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "emailBody"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEmailBody:Ljava/lang/String;

    .line 40
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mCharset:Ljava/lang/String;

    .line 41
    const-string v0, "8bit"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->mEncoding:Ljava/lang/String;

    .line 42
    return-void
.end method

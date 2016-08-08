.class public Lcom/mediatek/gba/GbaCredentials;
.super Ljava/lang/Object;
.source "GbaCredentials.java"

# interfaces
.implements Lorg/apache/http/auth/Credentials;


# static fields
.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

.field protected static final HEX_ARRAY:[C

.field private static final TAG:Ljava/lang/String; = "GbaCredentials"

.field private static sSyncObject:Ljava/lang/Object;


# instance fields
.field private mCachedSessionKeyUsed:Z

.field private final mContext:Landroid/content/Context;

.field private mIsTlsEnabled:Z

.field private mNafAddress:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mPasswd:Ljava/lang/String;

.field mService:Lcom/mediatek/gba/IGbaService;

.field private mSubId:I

.field private mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 35
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 37
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->HEX_ARRAY:[C

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/gba/GbaCredentials;->sSyncObject:Ljava/lang/Object;

    return-void

    .line 33
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    .line 35
    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/gba/GbaCredentials;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    .line 66
    iput-object p1, p0, Lcom/mediatek/gba/GbaCredentials;->mContext:Landroid/content/Context;

    .line 67
    iput p3, p0, Lcom/mediatek/gba/GbaCredentials;->mSubId:I

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 73
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    .line 74
    iput-boolean v2, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 78
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 79
    iput-boolean v2, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    .line 85
    :cond_1
    :goto_0
    const-string v0, "GbaCredentials"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nafAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 87
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 81
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 82
    iput-boolean v4, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    const-string v0, "GbaCredentials"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPasswd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/GbaCredentials;->mPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/mediatek/gba/GbaCredentials;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 92
    const-string v11, "GbaCredentials"

    const-string v12, "getUserPrincipal"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v11, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    if-ne v11, v13, :cond_9

    .line 95
    :cond_0
    const-string v11, "GbaCredentials"

    const-string v12, "Run GBA procedure"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_start_0
    const-string v11, "GbaService"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 101
    const-string v11, "debug"

    const-string v12, "The binder is null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-object v10

    .line 105
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_2
    invoke-static {v0}, Lcom/mediatek/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;

    move-result-object v11

    iput-object v11, p0, Lcom/mediatek/gba/GbaCredentials;->mService:Lcom/mediatek/gba/IGbaService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_1
    const/4 v5, 0x0

    .line 112
    .local v5, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :try_start_1
    sget-object v9, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 114
    .local v9, "uaId":[B
    iget-boolean v11, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    if-eqz v11, :cond_6

    .line 115
    const-string v11, "gba.ciper.suite"

    const-string v12, ""

    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "gbaStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 117
    invoke-static {v4}, Lcom/mediatek/gba/GbaCipherSuite;->getByName(Ljava/lang/String;)Lcom/mediatek/gba/GbaCipherSuite;

    move-result-object v1

    .line 118
    .local v1, "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v1}, Lcom/mediatek/gba/GbaCipherSuite;->getCode()[B

    move-result-object v2

    .line 120
    .local v2, "cipherSuiteCode":[B
    const/4 v11, 0x3

    const/4 v12, 0x0

    aget-byte v12, v2, v12

    aput-byte v12, v9, v11

    .line 121
    const/4 v11, 0x4

    const/4 v12, 0x1

    aget-byte v12, v2, v12

    aput-byte v12, v9, v11

    .line 128
    .end local v1    # "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    .end local v2    # "cipherSuiteCode":[B
    .end local v4    # "gbaStr":Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/mediatek/gba/GbaCredentials;->mNetwork:Landroid/net/Network;

    if-eqz v11, :cond_4

    .line 129
    iget-object v11, p0, Lcom/mediatek/gba/GbaCredentials;->mService:Lcom/mediatek/gba/IGbaService;

    iget-object v12, p0, Lcom/mediatek/gba/GbaCredentials;->mNetwork:Landroid/net/Network;

    invoke-interface {v11, v12}, Lcom/mediatek/gba/IGbaService;->setNetwork(Landroid/net/Network;)V

    .line 132
    :cond_4
    const-string v11, "digest.realm"

    const-string v12, ""

    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "realm":Ljava/lang/String;
    const-string v11, "GbaCredentials"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "realm:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 135
    const-string v10, ";"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "segments":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    .line 137
    const-string v10, "GbaCredentials"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NAF FQDN:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v10, -0x1

    iget v11, p0, Lcom/mediatek/gba/GbaCredentials;->mSubId:I

    if-ne v10, v11, :cond_7

    .line 143
    iget-object v10, p0, Lcom/mediatek/gba/GbaCredentials;->mService:Lcom/mediatek/gba/IGbaService;

    iget-object v11, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    invoke-interface {v10, v11, v9, v12}, Lcom/mediatek/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v5

    .line 150
    :goto_3
    if-eqz v5, :cond_8

    .line 151
    const-string v10, "GbaCredentials"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GBA Session Key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v10, Lorg/apache/http/auth/BasicUserPrincipal;

    invoke-virtual {v5}, Lcom/mediatek/gba/NafSessionKey;->getBtid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    .line 153
    invoke-virtual {v5}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/gba/GbaCredentials;->mPasswd:Ljava/lang/String;

    .line 154
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    .end local v5    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "segments":[Ljava/lang/String;
    .end local v9    # "uaId":[B
    :cond_5
    :goto_4
    iget-object v10, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;

    goto/16 :goto_0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 125
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v5    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .restart local v9    # "uaId":[B
    :cond_6
    :try_start_2
    sget-object v9, Lcom/mediatek/gba/GbaCredentials;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    goto/16 :goto_2

    .line 146
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "segments":[Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/mediatek/gba/GbaCredentials;->mService:Lcom/mediatek/gba/IGbaService;

    iget-object v11, p0, Lcom/mediatek/gba/GbaCredentials;->mNafAddress:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    iget v13, p0, Lcom/mediatek/gba/GbaCredentials;->mSubId:I

    invoke-interface {v10, v11, v9, v12, v13}, Lcom/mediatek/gba/IGbaService;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v5

    goto :goto_3

    .line 156
    :cond_8
    const-string v10, "GbaCredentials"

    const-string v11, "GBA Session Key is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v10, Lorg/apache/http/auth/BasicUserPrincipal;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lorg/apache/http/auth/BasicUserPrincipal;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/mediatek/gba/GbaCredentials;->mUserPrincipal:Lorg/apache/http/auth/BasicUserPrincipal;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 159
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "segments":[Ljava/lang/String;
    .end local v9    # "uaId":[B
    :catch_1
    move-exception v6

    .line 160
    .local v6, "re":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 163
    .end local v5    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v6    # "re":Landroid/os/RemoteException;
    :cond_9
    iget-boolean v10, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    if-nez v10, :cond_5

    .line 164
    iput-boolean v13, p0, Lcom/mediatek/gba/GbaCredentials;->mCachedSessionKeyUsed:Z

    goto :goto_4
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    const-string v0, "GbaCredentials"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GBA dedicated network netid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object p1, p0, Lcom/mediatek/gba/GbaCredentials;->mNetwork:Landroid/net/Network;

    .line 208
    :cond_0
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/mediatek/gba/GbaCredentials;->mSubId:I

    .line 195
    return-void
.end method

.method public setTlsEnabled(Z)V
    .locals 0
    .param p1, "tlsEnabled"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/mediatek/gba/GbaCredentials;->mIsTlsEnabled:Z

    .line 185
    return-void
.end method

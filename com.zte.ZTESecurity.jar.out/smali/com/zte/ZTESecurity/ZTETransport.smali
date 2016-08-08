.class public Lcom/zte/ZTESecurity/ZTETransport;
.super Landroid/content/ContentProviderNative;
.source "ZTETransport.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTETransport"


# instance fields
.field mCp:Landroid/content/ContentProvider;

.field public mOrgTran:Landroid/content/IContentProvider;

.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/content/ContentProvider;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cp"    # Landroid/content/ContentProvider;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 36
    invoke-static {p2}, Lcom/zte/ZTESecurity/ZTETransport;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    .line 37
    iput-object p1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    .line 38
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 39
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 202
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 203
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    iget-object v5, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v7}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    .line 206
    .local v3, "res":Z
    if-nez v3, :cond_1

    .line 221
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .end local v3    # "res":Z
    :goto_0
    return-object v4

    .line 211
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    iget-object v5, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v7}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    .line 214
    .restart local v3    # "res":Z
    if-nez v3, :cond_0

    goto :goto_0

    .line 221
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .end local v3    # "res":Z
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v4, p1, p2}, Landroid/content/IContentProvider;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ZTETransport"

    const-string v5, "Exception applyBatch"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    throw v0

    .line 228
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string v4, "ZTETransport"

    const-string v5, "OperationApplicationException applyBatch"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    throw v0
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v3}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    .line 109
    .local v1, "res":Z
    if-nez v1, :cond_0

    .line 110
    const/4 v2, 0x0

    .line 114
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTETransport"

    const-string v3, "Exception bulkInsert"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETransport"

    const-string v2, "Exception call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    throw v0
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETransport"

    const-string v2, "Exception canonicalize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    throw v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v1}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETransport"

    const-string v2, "Exception createCancellationSignal"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    throw v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v3}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    .line 127
    .local v1, "res":Z
    if-nez v1, :cond_0

    .line 128
    const/4 v2, 0x0

    .line 132
    :goto_0
    return v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTETransport"

    const-string v3, "Exception delete"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    throw v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETransport"

    const-string v2, "Exception getStreamTypes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v1, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETransport"

    const-string v2, "Exception getType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    throw v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v3}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    .line 92
    .local v1, "res":Z
    if-nez v1, :cond_0

    .line 93
    const/4 v2, 0x0

    .line 97
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTETransport"

    const-string v3, "Exception insert"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    throw v0
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETransport"

    const-string v2, "Exception openAssetFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    throw v0

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "ZTETransport"

    const-string v2, "FileNotFoundException openAssetFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    throw v0
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "signal"    # Landroid/os/ICancellationSignal;
    .param p5, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 167
    :catch_0
    move-exception v6

    .line 169
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "ZTETransport"

    const-string v1, "RemoteException openFile"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    throw v6

    .line 173
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 175
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v0, "ZTETransport"

    const-string v1, "FileNotFoundException openFile"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    throw v6
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 283
    :catch_0
    move-exception v6

    .line 285
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "ZTETransport"

    const-string v1, "Exception openTypedAssetFile"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    throw v6

    .line 288
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 290
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v0, "ZTETransport"

    const-string v1, "FileNotFoundException openTypedAssetFile"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    throw v6
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 10
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v9

    .line 51
    .local v9, "res":Z
    if-nez v9, :cond_0

    .line 52
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/ZTESecUtil;->getDefaultEmptyCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v8

    .line 61
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "ZTETransport"

    const-string v1, "Exception query"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    throw v8
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "url"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETransport"

    const-string v2, "Exception uncanonicalize"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    throw v0
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETransport;->mCp:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyPermission(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v7

    .line 145
    .local v7, "res":Z
    if-nez v7, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETransport;->mOrgTran:Landroid/content/IContentProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "ZTETransport"

    const-string v1, "Exception update"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    throw v6
.end method

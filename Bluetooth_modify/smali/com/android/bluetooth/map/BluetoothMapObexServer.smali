.class public Lcom/android/bluetooth/map/BluetoothMapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothMapObexServer.java"


# static fields
.field private static final D:Z = true

.field private static final MAP_TARGET:[B

.field private static final PROVIDER_ANR_TIMEOUT:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapObexServer"

.field private static final THREADED_MAIL_HEADER_ID:I = 0xfa

.field private static final THREAD_MAIL_KEY:J = 0x534c5349L

.field private static final TYPE_GET_FOLDER_LISTING:Ljava/lang/String; = "x-obex/folder-listing"

.field private static final TYPE_GET_MESSAGE_LISTING:Ljava/lang/String; = "x-bt/MAP-msg-listing"

.field private static final TYPE_MESSAGE:Ljava/lang/String; = "x-bt/message"

.field private static final TYPE_MESSAGE_UPDATE:Ljava/lang/String; = "x-bt/MAP-messageUpdate"

.field private static final TYPE_SET_MESSAGE_STATUS:Ljava/lang/String; = "x-bt/messageStatus"

.field private static final TYPE_SET_NOTIFICATION_REGISTRATION:Ljava/lang/String; = "x-bt/MAP-NotificationRegistration"

.field private static final UUID_LENGTH:I = 0x10

.field private static final V:Z


# instance fields
.field private mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

.field private mAccountId:J

.field private mAuthority:Ljava/lang/String;

.field private mBaseEmailUriString:Ljava/lang/String;

.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mEmailFolderUri:Landroid/net/Uri;

.field private mEnableSmsMms:Z

.field private mIsAborted:Z

.field private mMasId:I

.field private mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

.field mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

.field private mThreadIdSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    return-void

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x40t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapContentObserver;ILcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;Z)V
    .locals 4
    .param p1, "callback"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observer"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p4, "masId"    # I
    .param p5, "account"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    .param p6, "enableSmsMms"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 107
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 109
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 113
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 117
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 119
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 120
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    .line 125
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    .line 127
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 131
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 140
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    .line 141
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 143
    iput-boolean p6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    .line 144
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 145
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    .line 147
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 149
    invoke-virtual {p5}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    .line 151
    const-string v0, "[MAP]BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMapObexServer(): accountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p5, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    .line 153
    const-string v0, "[MAP]BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMapObexServer(): emailBaseUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->buildFolderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    .line 156
    const-string v0, "[MAP]BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMapObexServer(): mEmailFolderUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->buildFolderStructure()V

    .line 162
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setFolderStructure(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 164
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMapObexServer;
    .param p1, "x1"    # Ljavax/obex/Operation;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "x4"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p5, "x5"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p6, "x6"    # Ljava/io/InputStream;
    .param p7, "x7"    # J

    .prologue
    .line 74
    invoke-direct/range {p0 .. p8}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I

    move-result v0

    return v0
.end method

.method private acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 173
    .local v0, "providerClient":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 174
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to acquire provider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_0
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderClient;->setDetectNotResponding(J)V

    .line 177
    return-object v0
.end method

.method private addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1
    .param p1, "root"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 205
    const-string v0, "inbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 206
    const-string v0, "outbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 207
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 208
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 209
    return-void
.end method

.method private addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 14
    .param p1, "parentFolder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parent_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_FOLDER_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 247
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "name":Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 250
    .local v8, "id":J
    invoke-virtual {p1, v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addEmailFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v10

    .line 251
    .local v10, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-direct {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_2
    return-void
.end method

.method private addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 1
    .param p1, "root"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 217
    const-string v0, "inbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 218
    const-string v0, "outbox"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 219
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 220
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 221
    const-string v0, "draft"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 222
    return-void
.end method

.method private buildFolderStructure()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "root"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 186
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 187
    .local v0, "tmpFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addBaseFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 191
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEnableSmsMms:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addSmsMmsFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildFolderStructure(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mEmailFolderUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->addEmailFolders(Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 198
    :cond_1
    return-void
.end method

.method private getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 495
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no folder name supplied, setting folder to current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return-object v0

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 499
    if-nez v0, :cond_2

    .line 500
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 503
    :cond_2
    const-string v2, "[MAP]BluetoothMapObexServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " resulted in this element: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "null folder"

    goto :goto_1
.end method

.method private static final logHeader(Ljavax/obex/HeaderSet;)V
    .locals 4
    .param p0, "hs"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 1089
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :try_start_0
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] CONNECTION_ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xcb

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v2, "[logHeader] NEW!!! Dumping HeaderSet END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return-void

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[logHeader] dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1083
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1084
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1086
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)I
    .locals 24
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "isAutoSelectSub"    # Z

    .prologue
    .line 1106
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1107
    const-string v2, "[MAP]BluetoothMapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pushMessage] Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/16 v2, 0xcc

    .line 1192
    :goto_0
    return v2

    .line 1111
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v20

    .line 1112
    .local v20, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v20, :cond_1

    .line 1113
    const-string v2, "[MAP]BluetoothMapObexServer"

    const-string v3, "[pushMessage] folderElement == null - sending OBEX_HTTP_PRECON_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/16 v2, 0xcc

    goto :goto_0

    .line 1116
    :cond_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1118
    const-string v2, "outbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "draft"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1120
    const-string v2, "[MAP]BluetoothMapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pushMessage]: Is only allowed to outbox and draft. folderName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/16 v2, 0xc6

    goto :goto_0

    .line 1130
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 1131
    .local v17, "bMsgStream":Ljava/io/InputStream;
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v15

    .line 1132
    .local v15, "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    const-string v2, "[MAP]BluetoothMapObexServer"

    const-string v3, "[pushMessage] BluetoothMapbMessage.parse success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-nez v2, :cond_3

    .line 1135
    const-string v2, "[MAP]BluetoothMapObexServer"

    const-string v3, "[pushMessage] observer == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/16 v2, 0xd3

    goto :goto_0

    .line 1139
    :cond_3
    const-wide/16 v18, -0x1

    .line 1152
    .local v18, "subId":J
    if-eqz p4, :cond_4

    if-eqz v15, :cond_4

    .line 1154
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getSingleRecipient()Ljava/lang/String;

    move-result-object v21

    .line 1155
    .local v21, "number":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getThreadIdByNumber(Ljava/lang/String;)J

    move-result-wide v22

    .line 1157
    .local v22, "threadId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-lez v2, :cond_5

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSubIdByThread(J)J

    move-result-wide v18

    .line 1168
    .end local v21    # "number":Ljava/lang/String;
    .end local v22    # "threadId":J
    :cond_4
    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-gtz v2, :cond_7

    .line 1169
    move-object/from16 v5, p2

    .line 1170
    .local v5, "finalFolderName":Ljava/lang/String;
    move-object/from16 v6, p3

    .line 1171
    .local v6, "finalAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v7, v15

    .line 1172
    .local v7, "finalMessage":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    .line 1173
    .local v8, "finalObserver":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    move-object/from16 v9, v17

    .line 1174
    .local v9, "finalMsgStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapObexServer$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer$1;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V

    invoke-virtual {v11, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1192
    const/16 v2, 0xa0

    goto/16 :goto_0

    .line 1160
    .end local v5    # "finalFolderName":Ljava/lang/String;
    .end local v6    # "finalAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .end local v7    # "finalMessage":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v8    # "finalObserver":Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .end local v9    # "finalMsgStream":Ljava/io/InputStream;
    .restart local v21    # "number":Ljava/lang/String;
    .restart local v22    # "threadId":J
    :cond_5
    const-wide/16 v18, -0x1

    goto :goto_1

    .line 1163
    .end local v22    # "threadId":J
    :cond_6
    const-wide/16 v18, -0x1

    goto :goto_1

    .line 1182
    .end local v21    # "number":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v19}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto/16 :goto_0

    .line 1184
    .end local v15    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v17    # "bMsgStream":Ljava/io/InputStream;
    .end local v18    # "subId":J
    .end local v20    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :catch_0
    move-exception v10

    .line 1185
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "[MAP]BluetoothMapObexServer"

    const-string v3, "[pushMessage] Wrongly formatted bMessage received"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    const/16 v2, 0xcc

    goto/16 :goto_0

    .line 1187
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v10

    .line 1189
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "[MAP]BluetoothMapObexServer"

    const-string v3, "[pushMessage] Exception occured: "

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    const/16 v2, 0xc0

    goto/16 :goto_0
.end method

.method private pushMessageGemini(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;J)I
    .locals 16
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "subId"    # J

    .prologue
    .line 511
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 512
    const-string v3, "[MAP]BluetoothMapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[pushMessageGemini]: Missing charset - unable to decode message content. appParams.getCharset() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/16 v3, 0xcc

    .line 595
    :cond_0
    :goto_0
    return v3

    .line 516
    :cond_1
    const/4 v2, 0x0

    .line 518
    .local v2, "bMsgStream":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    .line 519
    .local v5, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v5, :cond_2

    .line 520
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "[pushMessageGemini]: folderElement == null - sending OBEX_HTTP_PRECON_FAILED"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    const/16 v3, 0xcc

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 592
    :catch_0
    move-exception v6

    goto :goto_0

    .line 523
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p2

    .line 525
    const-string v3, "outbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "draft"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 527
    const-string v3, "[MAP]BluetoothMapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[pushMessageGemini]: Is only allowed to outbox and draft. folderName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    const/16 v3, 0xc6

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 592
    :catch_1
    move-exception v6

    goto :goto_0

    .line 537
    :cond_3
    :try_start_4
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 539
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;

    move-result-object v4

    .line 541
    .local v4, "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-eqz v3, :cond_4

    if-nez v4, :cond_5

    .line 543
    :cond_4
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "[pushMessageGemini] mObserver or parsed message not available"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 544
    const/16 v3, 0xd3

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 592
    :catch_2
    move-exception v6

    goto :goto_0

    .line 547
    :cond_5
    :try_start_6
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_8

    :cond_6
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v3

    if-nez v3, :cond_9

    .line 550
    :cond_8
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "[pushMessageGemini] Wrong message type recieved"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 551
    const/16 v3, 0xc6

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 592
    :catch_3
    move-exception v6

    goto/16 :goto_0

    .line 554
    :cond_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    move-object/from16 v6, p3

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)J

    move-result-wide v12

    .line 555
    .local v12, "handle":J
    const-string v3, "[MAP]BluetoothMapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[pushMessageGemini] handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-wide/16 v6, 0x0

    cmp-long v3, v12, v6

    if-gez v3, :cond_a

    .line 557
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "Message  handle not created"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 558
    const/16 v3, 0xd3

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 592
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .line 560
    :cond_a
    :try_start_a
    new-instance v14, Ljavax/obex/HeaderSet;

    invoke-direct {v14}, Ljavax/obex/HeaderSet;-><init>()V

    .line 561
    .local v14, "replyHeaders":Ljavax/obex/HeaderSet;
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v3

    invoke-static {v12, v13, v3}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v11

    .line 562
    .local v11, "handleStr":Ljava/lang/String;
    const-string v3, "[MAP]BluetoothMapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[pushMessageGemini] handleStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " message.getType(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v3, 0x1

    invoke-virtual {v14, v3, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 564
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 589
    if-eqz v2, :cond_b

    .line 591
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    .line 595
    :cond_b
    :goto_1
    const/16 v3, 0xa0

    goto/16 :goto_0

    .line 566
    .end local v4    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v5    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v11    # "handleStr":Ljava/lang/String;
    .end local v12    # "handle":J
    .end local v14    # "replyHeaders":Ljavax/obex/HeaderSet;
    :catch_5
    move-exception v10

    .line 569
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 573
    :goto_2
    const/16 v3, 0xc0

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_0

    .line 592
    :catch_6
    move-exception v6

    goto/16 :goto_0

    .line 574
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_7
    move-exception v10

    .line 575
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_e
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "Wrongly formatted bMessage received"

    invoke-static {v3, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 576
    const/16 v3, 0xcc

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    .line 592
    :catch_8
    move-exception v6

    goto/16 :goto_0

    .line 577
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v10

    .line 578
    .local v10, "e":Ljava/io/IOException;
    :try_start_10
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "Exception occured: "

    invoke-static {v3, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    .line 580
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "PushMessage Operation Aborted"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 581
    const/16 v3, 0xa0

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_0

    .line 592
    :catch_a
    move-exception v6

    goto/16 :goto_0

    .line 583
    :cond_c
    const/16 v3, 0xc0

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto/16 :goto_0

    .line 592
    :catch_b
    move-exception v6

    goto/16 :goto_0

    .line 585
    .end local v10    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v10

    .line 586
    .local v10, "e":Ljava/lang/Exception;
    :try_start_13
    const-string v3, "[MAP]BluetoothMapObexServer"

    const-string v6, "Exception:"

    invoke-static {v3, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 587
    const/16 v3, 0xc0

    .line 589
    if-eqz v2, :cond_0

    .line 591
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    goto/16 :goto_0

    .line 592
    :catch_d
    move-exception v6

    goto/16 :goto_0

    .line 589
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_d

    .line 591
    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    .line 592
    :cond_d
    :goto_3
    throw v3

    .restart local v4    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .restart local v5    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v11    # "handleStr":Ljava/lang/String;
    .restart local v12    # "handle":J
    .restart local v14    # "replyHeaders":Ljavax/obex/HeaderSet;
    :catch_e
    move-exception v3

    goto :goto_1

    .end local v4    # "message":Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .end local v5    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v11    # "handleStr":Ljava/lang/String;
    .end local v12    # "handle":J
    .end local v14    # "replyHeaders":Ljavax/obex/HeaderSet;
    :catch_f
    move-exception v6

    goto :goto_3

    .line 570
    .local v10, "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v3

    goto :goto_2
.end method

.method private sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 12
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 926
    const/4 v8, 0x0

    .line 927
    .local v8, "outStream":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 928
    .local v7, "outBytes":[B
    new-instance v6, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 929
    .local v6, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/4 v1, 0x0

    .line 930
    .local v1, "bytesWritten":I
    new-instance v9, Ljavax/obex/HeaderSet;

    invoke-direct {v9}, Ljavax/obex/HeaderSet;-><init>()V

    .line 932
    .local v9, "replyHeaders":Ljavax/obex/HeaderSet;
    if-nez p2, :cond_0

    .line 933
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 934
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v10, 0x400

    invoke-virtual {p2, v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 941
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v5

    .line 942
    .local v5, "maxListCount":I
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v3

    .line 944
    .local v3, "listStartOffset":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_1

    .line 945
    const/4 v3, 0x0

    .line 947
    :cond_1
    const/4 v10, -0x1

    if-ne v5, v10, :cond_2

    .line 948
    const/16 v5, 0x400

    .line 950
    :cond_2
    if-eqz v5, :cond_3

    .line 952
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v10, v3, v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->encode(II)[B

    move-result-object v7

    .line 953
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 957
    :cond_3
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolderCount()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFolderListingSize(I)V

    .line 958
    const/16 v10, 0x4c

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 959
    invoke-interface {p1, v9}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 976
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v4

    .line 978
    .local v4, "maxChunkSize":I
    if-eqz v7, :cond_c

    .line 980
    :goto_0
    :try_start_1
    array-length v10, v7

    if-ge v1, v10, :cond_7

    iget-boolean v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v10, :cond_7

    .line 981
    array-length v10, v7

    sub-int/2addr v10, v1

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 982
    .local v0, "bytesToWrite":I
    invoke-virtual {v8, v7, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 983
    add-int/2addr v1, v0

    goto :goto_0

    .line 961
    .end local v0    # "bytesToWrite":I
    .end local v3    # "listStartOffset":I
    .end local v4    # "maxChunkSize":I
    .end local v5    # "maxListCount":I
    :catch_0
    move-exception v2

    .line 962
    .local v2, "e1":Ljava/io/IOException;
    const-string v10, "[MAP]BluetoothMapObexServer"

    const-string v11, "[sendFolderListingRsp]: IOException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    if-eqz v8, :cond_4

    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 964
    :cond_4
    :goto_1
    iget-boolean v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 965
    const-string v10, "[MAP]BluetoothMapObexServer"

    const-string v11, "sendFolderListingRsp Operation Aborted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/16 v10, 0xa0

    .line 998
    .end local v2    # "e1":Ljava/io/IOException;
    :goto_2
    return v10

    .line 968
    .restart local v2    # "e1":Ljava/io/IOException;
    :cond_5
    const/16 v10, 0xc0

    goto :goto_2

    .line 970
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 971
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    const-string v10, "[MAP]BluetoothMapObexServer"

    const-string v11, "[sendFolderListingRsp]: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST Exception:"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    if-eqz v8, :cond_6

    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 973
    :cond_6
    :goto_3
    const/16 v10, 0xcc

    goto :goto_2

    .line 988
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "listStartOffset":I
    .restart local v4    # "maxChunkSize":I
    .restart local v5    # "maxListCount":I
    :cond_7
    if-eqz v8, :cond_8

    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 992
    :cond_8
    :goto_4
    array-length v10, v7

    if-eq v1, v10, :cond_9

    iget-boolean v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v10, :cond_b

    .line 993
    :cond_9
    const/16 v10, 0xa0

    goto :goto_2

    .line 985
    :catch_2
    move-exception v10

    .line 988
    if-eqz v8, :cond_8

    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v10

    goto :goto_4

    :catchall_0
    move-exception v10

    if-eqz v8, :cond_a

    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_a
    :goto_5
    throw v10

    .line 995
    :cond_b
    const/16 v10, 0xc0

    goto :goto_2

    .line 998
    :cond_c
    const/16 v10, 0xa0

    goto :goto_2

    .line 963
    .end local v3    # "listStartOffset":I
    .end local v4    # "maxChunkSize":I
    .end local v5    # "maxListCount":I
    .local v2, "e1":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_1

    .line 972
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v10

    goto :goto_3

    .line 988
    .end local v2    # "e1":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "listStartOffset":I
    .restart local v4    # "maxChunkSize":I
    .restart local v5    # "maxListCount":I
    :catch_6
    move-exception v10

    goto :goto_4

    :catch_7
    move-exception v11

    goto :goto_5
.end method

.method private sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 10
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "handle"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    .line 1015
    const/4 v6, 0x0

    .line 1016
    .local v6, "outStream":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 1017
    .local v5, "outBytes":[B
    const/4 v1, 0x0

    .line 1020
    .local v1, "bytesWritten":I
    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v8, p2, p3, v9}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B

    move-result-object v5

    .line 1021
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 1024
    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v8

    sget-object v9, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v8

    if-nez v8, :cond_0

    .line 1027
    new-instance v4, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 1028
    .local v4, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    new-instance v7, Ljavax/obex/HeaderSet;

    invoke-direct {v7}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1029
    .local v7, "replyHeaders":Ljavax/obex/HeaderSet;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setFractionDeliver(I)V

    .line 1031
    const/16 v8, 0x4c

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1033
    invoke-interface {p1, v7}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1054
    .end local v4    # "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .end local v7    # "replyHeaders":Ljavax/obex/HeaderSet;
    :cond_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v3

    .line 1056
    .local v3, "maxChunkSize":I
    if-eqz v5, :cond_a

    .line 1058
    :goto_0
    :try_start_1
    array-length v8, v5

    if-ge v1, v8, :cond_4

    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v8, :cond_4

    .line 1059
    array-length v8, v5

    sub-int/2addr v8, v1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1060
    .local v0, "bytesToWrite":I
    invoke-virtual {v6, v5, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    add-int/2addr v1, v0

    goto :goto_0

    .line 1038
    .end local v0    # "bytesToWrite":I
    .end local v3    # "maxChunkSize":I
    :catch_0
    move-exception v2

    .line 1039
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "[sendGetMessageRsp]: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1041
    :cond_1
    :goto_1
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1042
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "sendGetMessageRsp Operation Aborted"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/16 v8, 0xa0

    .line 1077
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return v8

    .line 1045
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_2
    const/16 v8, 0xc0

    goto :goto_2

    .line 1047
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1048
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "sendGetMessageRsp: IllegalArgumentException (e.g. invalid handle) - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1051
    :cond_3
    :goto_3
    const/16 v8, 0xc0

    goto :goto_2

    .line 1069
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "maxChunkSize":I
    :cond_4
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1071
    :cond_5
    :goto_4
    array-length v8, v5

    if-eq v1, v8, :cond_6

    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v8, :cond_9

    .line 1072
    :cond_6
    const/16 v8, 0xa0

    goto :goto_2

    .line 1063
    :catch_2
    move-exception v2

    .line 1065
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Abort Received"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1066
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "getMessage() Aborted..."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1069
    :cond_7
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v8

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_8

    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_8
    :goto_5
    throw v8

    .line 1074
    :cond_9
    const/16 v8, 0xc0

    goto :goto_2

    .line 1076
    :cond_a
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "[sendGetMessageRsp]: success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/16 v8, 0xa0

    goto :goto_2

    .line 1040
    .end local v3    # "maxChunkSize":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_1

    .line 1050
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v8

    goto :goto_3

    .line 1069
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "maxChunkSize":I
    :catch_6
    move-exception v8

    goto :goto_4

    :catch_7
    move-exception v9

    goto :goto_5
.end method

.method private sendMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;J)I
    .locals 13
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p5, "observer"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p6, "bMsgStream"    # Ljava/io/InputStream;
    .param p7, "subId"    # J

    .prologue
    .line 1199
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    .line 1200
    .local v3, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    move-object/from16 v4, p3

    move-wide/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->pushMessage(Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1202
    .local v8, "handle":J
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendMessage] handle: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-gez v1, :cond_0

    .line 1204
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v2, "[sendMessage] handle < 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/16 v1, 0xd3

    .line 1223
    .end local v3    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v8    # "handle":J
    :goto_0
    return v1

    .line 1207
    .restart local v3    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .restart local v8    # "handle":J
    :cond_0
    new-instance v11, Ljavax/obex/HeaderSet;

    invoke-direct {v11}, Ljavax/obex/HeaderSet;-><init>()V

    .line 1208
    .local v11, "replyHeaders":Ljavax/obex/HeaderSet;
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    invoke-static {v8, v9, v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMapHandle(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)Ljava/lang/String;

    move-result-object v10

    .line 1210
    .local v10, "handleStr":Ljava/lang/String;
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendMessage] handleStr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " message.getType(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v1, 0x1

    invoke-virtual {v11, v1, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 1212
    invoke-interface {p1, v11}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 1214
    invoke-virtual/range {p6 .. p6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1223
    const/16 v1, 0xa0

    goto :goto_0

    .line 1215
    .end local v3    # "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v8    # "handle":J
    .end local v10    # "handleStr":Ljava/lang/String;
    .end local v11    # "replyHeaders":Ljavax/obex/HeaderSet;
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v2, "[sendMessage] Wrongly formatted bMessage received"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    const/16 v1, 0xcc

    goto :goto_0

    .line 1218
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v2, "[sendMessage] Exception occured: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    const/16 v1, 0xc0

    goto :goto_0
.end method

.method private sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I
    .locals 17
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p3, "folderName"    # Ljava/lang/String;

    .prologue
    .line 809
    const/4 v12, 0x0

    .line 810
    .local v12, "outStream":Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 811
    .local v10, "outBytes":[B
    const/4 v3, 0x0

    .line 812
    .local v3, "bytesWritten":I
    const/4 v6, 0x0

    .line 813
    .local v6, "hasUnread":Z
    new-instance v13, Ljavax/obex/HeaderSet;

    invoke-direct {v13}, Ljavax/obex/HeaderSet;-><init>()V

    .line 814
    .local v13, "replyHeaders":Ljavax/obex/HeaderSet;
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 816
    .local v9, "outAppParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    if-nez p2, :cond_0

    .line 817
    new-instance p2, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .end local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    invoke-direct/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 818
    .restart local p2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    const/16 v14, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 819
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 822
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->getFolderElementFromName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    .line 823
    .local v5, "folderToList":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v5, :cond_1

    .line 824
    const-string v14, "[MAP]BluetoothMapObexServer"

    const-string v15, "sendMessageListingRsp: folderToList == null - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/16 v14, 0xc0

    .line 909
    :goto_0
    return v14

    .line 831
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 833
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 834
    const/16 v14, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMaxListCount(I)V

    .line 836
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    .line 837
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setStartOffset(I)V

    .line 839
    :cond_3
    const-string v14, "[MAP]BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[sendMessageListingRsp]: MaxListCount = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "folderName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v14

    if-eqz v14, :cond_4

    .line 842
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    move-result-object v11

    .line 844
    .local v11, "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getCount()I

    move-result v14

    invoke-virtual {v9, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 845
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    invoke-virtual {v11, v14}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->encode(Z)[B

    move-result-object v10

    .line 846
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread()Z

    move-result v6

    .line 847
    const-string v14, "[MAP]BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[sendMessageListingRsp]: outList count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " outList read = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v11    # "outList":Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    :goto_1
    if-eqz v6, :cond_6

    .line 863
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V

    .line 868
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMseTime(J)V

    .line 869
    const/16 v14, 0x4c

    invoke-virtual {v9}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->EncodeParams()[B

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 870
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 887
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v8

    .line 888
    .local v8, "maxChunkSize":I
    if-eqz v10, :cond_c

    .line 890
    :goto_3
    :try_start_1
    array-length v14, v10

    if-ge v3, v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v14, :cond_9

    .line 891
    array-length v14, v10

    sub-int/2addr v14, v3

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 892
    .local v2, "bytesToWrite":I
    invoke-virtual {v12, v10, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    add-int/2addr v3, v2

    goto :goto_3

    .line 851
    .end local v2    # "bytesToWrite":I
    .end local v8    # "maxChunkSize":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v7

    .line 852
    .local v7, "listSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mOutContent:Lcom/android/bluetooth/map/BluetoothMapContent;

    move-object/from16 v0, p2

    invoke-virtual {v14, v5, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v6

    .line 853
    invoke-virtual {v9, v7}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMessageListingSize(I)V

    .line 854
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->noBodyHeader()V

    .line 855
    const-string v14, "[MAP]BluetoothMapObexServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[sendMessageListingRsp]: listSize = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hasUnread = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 872
    .end local v7    # "listSize":I
    :catch_0
    move-exception v4

    .line 873
    .local v4, "e":Ljava/io/IOException;
    const-string v14, "[MAP]BluetoothMapObexServer"

    const-string v15, "[sendMessageListingRsp]: IOException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    if-eqz v12, :cond_5

    :try_start_3
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 875
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 876
    const-string v14, "[MAP]BluetoothMapObexServer"

    const-string v15, "sendMessageListingRsp Operation Aborted"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/16 v14, 0xa0

    goto/16 :goto_0

    .line 865
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v9, v14}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setNewMessage(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 881
    :catch_1
    move-exception v4

    .line 882
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v14, "[MAP]BluetoothMapObexServer"

    const-string v15, "sendMessageListingRsp: IllegalArgumentException - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    if-eqz v12, :cond_7

    :try_start_5
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 884
    :cond_7
    :goto_5
    const/16 v14, 0xc0

    goto/16 :goto_0

    .line 879
    .local v4, "e":Ljava/io/IOException;
    :cond_8
    const/16 v14, 0xc0

    goto/16 :goto_0

    .line 899
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v8    # "maxChunkSize":I
    :cond_9
    if-eqz v12, :cond_a

    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 901
    :cond_a
    :goto_6
    array-length v14, v10

    if-eq v3, v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-nez v14, :cond_d

    .line 902
    const-string v14, "[MAP]BluetoothMapObexServer"

    const-string v15, "sendMessageListingRsp: bytesWritten != outBytes.length - sending OBEX_HTTP_BAD_REQUEST"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/16 v14, 0xc0

    goto/16 :goto_0

    .line 895
    :catch_2
    move-exception v4

    .line 896
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v14, "[MAP]BluetoothMapObexServer"

    invoke-static {v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 899
    if-eqz v12, :cond_a

    :try_start_8
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v14

    goto :goto_6

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v12, :cond_b

    :try_start_9
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_b
    :goto_7
    throw v14

    .line 906
    :cond_c
    if-eqz v12, :cond_d

    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 908
    :cond_d
    :goto_8
    const-string v14, "[MAP]BluetoothMapObexServer"

    const-string v15, "[sendMessageListingRsp]: success"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/16 v14, 0xa0

    goto/16 :goto_0

    .line 874
    .end local v8    # "maxChunkSize":I
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v14

    goto :goto_4

    .line 883
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v14

    goto :goto_5

    .line 899
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "maxChunkSize":I
    :catch_6
    move-exception v14

    goto :goto_6

    :catch_7
    move-exception v15

    goto :goto_7

    .line 906
    :catch_8
    move-exception v14

    goto :goto_8
.end method

.method private setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 12
    .param p1, "msgHandle"    # Ljava/lang/String;
    .param p2, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;

    .prologue
    const/16 v1, 0xcc

    const/4 v11, -0x1

    const/16 v9, 0xd3

    .line 599
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusIndicator()I

    move-result v8

    .line 600
    .local v8, "indicator":I
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStatusValue()I

    move-result v7

    .line 601
    .local v7, "value":I
    const-string v5, "[MAP]BluetoothMapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[setMessageStatus] indicator = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " value = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    if-eq v8, v11, :cond_0

    if-eq v7, v11, :cond_0

    if-nez p1, :cond_1

    .line 608
    :cond_0
    const-string v5, "[MAP]BluetoothMapObexServer"

    const-string v6, "[setMessageStatus] INVALID_VALUE_PARAMETER || msgHandle == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :goto_0
    return v1

    .line 611
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    if-nez v5, :cond_2

    .line 612
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v5, "Error: no mObserver!"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    .line 613
    goto :goto_0

    .line 617
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v2

    .line 618
    .local v2, "handle":J
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v4

    .line 619
    .local v4, "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    const-string v5, "[MAP]BluetoothMapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMessageStatus. Handle:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", MsgType: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    const/4 v1, 0x1

    if-ne v8, v1, :cond_3

    .line 626
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusDeleted(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v9

    .line 628
    goto :goto_0

    .line 620
    .end local v2    # "handle":J
    .end local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "[MAP]BluetoothMapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[setMessageStatus] Wrongly formatted message handle: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "handle":J
    .restart local v4    # "msgType":Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setMessageStatusRead(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 633
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v5, "not able to update the message"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v9

    .line 634
    goto :goto_0

    .line 636
    :catch_1
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v5, "Error in setMessageStatusRead()"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v9

    .line 638
    goto :goto_0

    .line 641
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v5, "[setMessageStatus] success"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/16 v1, 0xa0

    goto/16 :goto_0
.end method

.method private updateInbox()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xd3

    const/16 v7, 0xd1

    .line 441
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccount:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    if-eqz v9, :cond_0

    .line 442
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    const-string v10, "inbox"

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    .line 444
    .local v5, "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v5, :cond_0

    .line 445
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mAccountId:J

    .line 446
    .local v0, "accountId":J
    const-string v9, "[MAP]BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateInbox inbox="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v4, Landroid/os/Bundle;

    const/4 v9, 0x2

    invoke-direct {v4, v9}, Landroid/os/Bundle;-><init>(I)V

    .line 450
    .local v4, "extras":Landroid/os/Bundle;
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-eqz v9, :cond_1

    .line 451
    const-string v9, "[MAP]BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateInbox accountId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v9, "UpdateFolderId"

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 454
    const-string v9, "UpdateAccountId"

    invoke-virtual {v4, v9, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 462
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mBaseEmailUriString:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 463
    .local v3, "emailUri":Landroid/net/Uri;
    const-string v9, "[MAP]BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateInbox in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    const-string v9, "[MAP]BluetoothMapObexServer"

    const-string v10, "updateInbox call()..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v9, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    const-string v10, "UpdateFolder"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 467
    .local v6, "myBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_2

    .line 468
    const/16 v7, 0xa0

    .line 487
    .end local v0    # "accountId":J
    .end local v3    # "emailUri":Landroid/net/Uri;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v6    # "myBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v7

    .line 458
    .restart local v0    # "accountId":J
    .restart local v4    # "extras":Landroid/os/Bundle;
    .restart local v5    # "inboxFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_1
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "updateInbox accountId=0 -> OBEX_HTTP_NOT_IMPLEMENTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    .restart local v3    # "emailUri":Landroid/net/Uri;
    .restart local v6    # "myBundle":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string v9, "[MAP]BluetoothMapObexServer"

    const-string v10, "updateInbox call failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 473
    .end local v6    # "myBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 474
    .local v2, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v7

    iput-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    move v7, v8

    .line 475
    goto :goto_0

    .line 476
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v7, "[MAP]BluetoothMapObexServer"

    const-string v9, "UpdateInbox - if uri or method is null"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v8

    .line 478
    goto :goto_0

    .line 480
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "[MAP]BluetoothMapObexServer"

    const-string v9, "UpdateInbox - if uri is not known"

    invoke-static {v7, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v7, v8

    .line 482
    goto :goto_0
.end method

.method private updateSubInfoList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 1292
    .local v3, "subInfoRecordInOneSim":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v4, "[MAP]BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSubInfoList subInfoRecordInOneSim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1296
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1297
    .local v1, "infoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    const-string v4, "[MAP]BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSubInfoList name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1314
    .end local v0    # "i":I
    .end local v1    # "infoRecord":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 2
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 342
    const-string v0, "[MAP]BluetoothMapObexServer"

    const-string v1, "[onAbort]: enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 345
    const/16 v0, 0xa0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 694
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v2, "[onClose]: enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 698
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mMasId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 699
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 701
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 703
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;

    .line 706
    :cond_1
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 14
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x0

    const/16 v9, 0xc6

    .line 260
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v10, "[onConnect]: begin"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v8, Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-direct {v8}, Lcom/android/bluetooth/map/BluetoothMapSimManager;-><init>()V

    iput-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    .line 263
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->init(Landroid/content/Context;)V

    .line 266
    iput-boolean v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 267
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 268
    const/4 v6, 0x0

    .line 270
    .local v6, "threadedMailKey":Ljava/lang/Long;
    const/16 v8, 0x46

    :try_start_0
    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v7, v0

    .line 271
    .local v7, "uuid":[B
    const/16 v8, 0xfa

    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/Long;

    move-object v6, v0

    .line 272
    if-nez v7, :cond_0

    move v8, v9

    .line 322
    .end local v7    # "uuid":[B
    :goto_0
    return v8

    .line 275
    .restart local v7    # "uuid":[B
    :cond_0
    const-string v8, "[MAP]BluetoothMapObexServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onConnect]: uuid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    array-length v8, v7

    if-eq v8, v13, :cond_1

    .line 278
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v10, "[onConnect] Wrong UUID length"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 279
    goto :goto_0

    .line 281
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v13, :cond_3

    .line 282
    aget-byte v8, v7, v3

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapObexServer;->MAP_TARGET:[B

    aget-byte v10, v10, v3

    if-eq v8, v10, :cond_2

    .line 283
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v10, "[onConnect] Wrong UUID"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 284
    goto :goto_0

    .line 281
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 287
    :cond_3
    const/16 v8, 0x4a

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v7}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    const/16 v8, 0x4a

    :try_start_1
    invoke-virtual {p1, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v5, v0

    .line 295
    .local v5, "remote":[B
    if-eqz v5, :cond_4

    .line 296
    const-string v8, "[MAP]BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onConnect]: remote="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v8, 0x46

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 299
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x534c5349

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 304
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 305
    const/16 v8, 0xfa

    const-wide/32 v10, 0x534c5349

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :cond_5
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v8, :cond_6

    .line 317
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v4

    .line 318
    .local v4, "msg":Landroid/os/Message;
    const/16 v8, 0x1389

    iput v8, v4, Landroid/os/Message;->what:I

    .line 319
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 322
    .end local v4    # "msg":Landroid/os/Message;
    :cond_6
    const/16 v8, 0xa0

    goto/16 :goto_0

    .line 288
    .end local v3    # "i":I
    .end local v5    # "remote":[B
    .end local v7    # "uuid":[B
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "[MAP]BluetoothMapObexServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[onConnect] Exception during onConnect: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/16 v8, 0xd0

    goto/16 :goto_0

    .line 307
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v7    # "uuid":[B
    :catch_1
    move-exception v2

    .line 308
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "Exception during onConnect:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    iput-boolean v12, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mThreadIdSupport:Z

    .line 310
    const/16 v8, 0xd0

    goto/16 :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 3
    .param p1, "req"    # Ljavax/obex/HeaderSet;
    .param p2, "resp"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 327
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v2, "[onDisconnect]: enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->unregisterReceiver()V

    .line 330
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 331
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 332
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 334
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 335
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 338
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 14
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    const/16 v10, 0xcc

    const/4 v13, 0x1

    const/16 v9, 0xc0

    .line 710
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v11, "[onGet]: enter"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 712
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 716
    const/4 v1, 0x0

    .line 717
    .local v1, "appParamRaw":[B
    const/4 v2, 0x0

    .line 719
    .local v2, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface {p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v6

    .line 720
    .local v6, "request":Ljavax/obex/HeaderSet;
    const/16 v8, 0x42

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 721
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 722
    .local v5, "name":Ljava/lang/String;
    const/16 v8, 0x4c

    invoke-virtual {v6, v8}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v1, v0

    .line 723
    if-eqz v1, :cond_0

    .line 724
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v3, v1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .end local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .local v3, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v2, v3

    .line 727
    .end local v3    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .restart local v2    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    const-string v8, "[MAP]BluetoothMapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OnGet] type is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " name is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    if-nez v7, :cond_1

    move v8, v9

    .line 790
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "request":Ljavax/obex/HeaderSet;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return v8

    .line 734
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "request":Ljavax/obex/HeaderSet;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_1
    const-string v8, "x-obex/folder-listing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 739
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendFolderListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 740
    :cond_2
    const-string v8, "x-bt/MAP-msg-listing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 754
    if-nez v5, :cond_3

    .line 755
    iget-object v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    .line 757
    :cond_3
    const-string v8, "telecom"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "msg"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 758
    :cond_4
    const-string v8, "[MAP]BluetoothMapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onGet] TYPE_GET_MESSAGE_LISTING invalid folder "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 759
    goto :goto_0

    .line 761
    :cond_5
    invoke-direct {p0, p1, v2, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendMessageListingRsp(Ljavax/obex/Operation;Lcom/android/bluetooth/map/BluetoothMapAppParams;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 762
    :cond_6
    const-string v8, "x-bt/message"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 768
    invoke-direct {p0, p1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->sendGetMessageRsp(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v8

    goto :goto_0

    .line 770
    :cond_7
    const-string v8, "[MAP]BluetoothMapObexServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onGet] unknown type request: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 771
    const/16 v8, 0xc6

    goto :goto_0

    .line 774
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "request":Ljavax/obex/HeaderSet;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 775
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "Exception:"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v10

    .line 776
    goto :goto_0

    .line 777
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v4

    .line 778
    .local v4, "e":Ljava/text/ParseException;
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "Exception:"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v10

    .line 779
    goto/16 :goto_0

    .line 780
    .end local v4    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v4

    .line 782
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v10, "Exception occured while handling request"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    iget-boolean v8, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-ne v8, v13, :cond_8

    .line 787
    const-string v8, "[MAP]BluetoothMapObexServer"

    const-string v9, "onGet Operation Aborted"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/16 v8, 0xa0

    goto/16 :goto_0

    :cond_8
    move v8, v9

    .line 790
    goto/16 :goto_0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 16
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 350
    const-string v2, "[MAP]BluetoothMapObexServer"

    const-string v3, "onPut(): enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 353
    const/4 v12, 0x0

    .line 356
    .local v12, "request":Ljavax/obex/HeaderSet;
    const/4 v5, 0x0

    .line 359
    .local v5, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v12

    .line 360
    const/16 v2, 0x42

    invoke-virtual {v12, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 362
    .local v13, "type":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 363
    .local v4, "name":Ljava/lang/String;
    const/16 v2, 0x4c

    invoke-virtual {v12, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v8, v0

    .line 364
    .local v8, "appParamRaw":[B
    if-eqz v8, :cond_0

    .line 365
    new-instance v9, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v9, v8}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>([B)V

    .end local v5    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .local v9, "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    move-object v5, v9

    .line 366
    .end local v9    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .restart local v5    # "appParams":Lcom/android/bluetooth/map/BluetoothMapAppParams;
    :cond_0
    const-string v2, "[MAP]BluetoothMapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", name = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v2, "x-bt/MAP-messageUpdate"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->updateInbox()I

    move-result v2

    .line 437
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "appParamRaw":[B
    .end local v13    # "type":Ljava/lang/String;
    :goto_0
    return v2

    .line 372
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v8    # "appParamRaw":[B
    .restart local v13    # "type":Ljava/lang/String;
    :cond_1
    const-string v2, "x-bt/MAP-NotificationRegistration"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mObserver:Lcom/android/bluetooth/map/BluetoothMapContentObserver;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getNotificationStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContentObserver;->setNotificationRegistration(I)I

    move-result v2

    goto :goto_0

    .line 378
    :cond_2
    const-string v2, "x-bt/messageStatus"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->setMessageStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I

    move-result v2

    goto :goto_0

    .line 385
    :cond_3
    const-string v2, "x-bt/message"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSubCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 394
    const-wide/16 v6, -0x1

    .line 413
    .local v6, "subId":J
    :goto_1
    const-string v2, "[MAP]BluetoothMapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onPut] pushMessageGemini subId = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 414
    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessageGemini(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;J)I

    move-result v2

    goto :goto_0

    .line 395
    .end local v6    # "subId":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSubCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mSimManager:Lcom/android/bluetooth/map/BluetoothMapSimManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getSingleSubId()J

    move-result-wide v6

    .restart local v6    # "subId":J
    goto :goto_1

    .line 399
    .end local v6    # "subId":J
    :cond_5
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v11

    .line 400
    .local v11, "messageSubId":I
    const-string v2, "[MAP]BluetoothMapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onPut] Settings messageSubId = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v2, -0x1

    if-ne v11, v2, :cond_6

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)I

    move-result v2

    goto/16 :goto_0

    .line 406
    :cond_6
    int-to-long v2, v11

    const-wide/16 v14, -0x3

    cmp-long v2, v2, v14

    if-nez v2, :cond_7

    .line 407
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->pushMessage(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto/16 :goto_0

    .line 409
    :cond_7
    int-to-long v6, v11

    .restart local v6    # "subId":J
    goto :goto_1

    .line 416
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "subId":J
    .end local v8    # "appParamRaw":[B
    .end local v11    # "messageSubId":I
    .end local v13    # "type":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 419
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->acquireUnstableContentProviderOrThrow()Landroid/content/ContentProviderClient;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 423
    :goto_2
    const/16 v2, 0xc0

    goto/16 :goto_0

    .line 424
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 427
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "[MAP]BluetoothMapObexServer"

    const-string v3, "Exception occured while handling request"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mIsAborted:Z

    if-eqz v2, :cond_8

    .line 432
    const/16 v2, 0xa0

    goto/16 :goto_0

    .line 434
    :cond_8
    const/16 v2, 0xc0

    goto/16 :goto_0

    .line 437
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v8    # "appParamRaw":[B
    .restart local v13    # "type":Ljava/lang/String;
    :cond_9
    const/16 v2, 0xc0

    goto/16 :goto_0

    .line 420
    .end local v4    # "name":Ljava/lang/String;
    .end local v8    # "appParamRaw":[B
    .end local v13    # "type":Ljava/lang/String;
    .local v10, "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 8
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0xc0

    .line 650
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->notifyUpdateWakeLock()V

    .line 652
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    .local v2, "folderName":Ljava/lang/String;
    const-string v4, "[MAP]BluetoothMapObexServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onSetPath] name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " create: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-ne p3, v7, :cond_0

    .line 667
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 668
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 675
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 676
    :cond_1
    if-nez p3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 689
    :cond_2
    :goto_0
    const/16 v3, 0xa0

    .end local v2    # "folderName":Ljava/lang/String;
    :goto_1
    return v3

    .line 653
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "[MAP]BluetoothMapObexServer"

    const-string v5, "request headers error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "folderName":Ljava/lang/String;
    :cond_3
    const-string v4, "[MAP]BluetoothMapObexServer"

    const-string v5, "[onSetPath] mCurrentFolder.getParent() == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 680
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-virtual {v4, v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    .line 681
    .local v1, "folder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v1, :cond_5

    .line 682
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mCurrentFolder:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    goto :goto_0

    .line 684
    :cond_5
    const-string v4, "[MAP]BluetoothMapObexServer"

    const-string v5, "[onSetPath] folder == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showSubSelectDialog(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
    .locals 17
    .param p1, "op"    # Ljavax/obex/Operation;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "appParams"    # Lcom/android/bluetooth/map/BluetoothMapAppParams;
    .param p4, "message"    # Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .param p5, "observer"    # Lcom/android/bluetooth/map/BluetoothMapContentObserver;
    .param p6, "bMsgStream"    # Ljava/io/InputStream;

    .prologue
    .line 1229
    const-string v1, "[MAP]BluetoothMapObexServer"

    const-string v2, "[showSubSelectDialog] enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v13, 0x0

    .line 1232
    .local v13, "isSingleRecipient":Z
    const-string v15, ""

    .line 1233
    .local v15, "recipentNumber":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->getRecipients()Ljava/util/ArrayList;

    move-result-object v12

    .line 1234
    .local v12, "cards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;>;"
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1235
    const/4 v13, 0x1

    .line 1236
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->getPhoneNumber()[Ljava/lang/String;

    move-result-object v14

    .line 1237
    .local v14, "origNumber":[Ljava/lang/String;
    if-eqz v14, :cond_0

    array-length v1, v14

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1238
    const/4 v1, 0x0

    aget-object v15, v14, v1

    .line 1241
    .end local v14    # "origNumber":[Ljava/lang/String;
    :cond_0
    const-string v1, "[MAP]BluetoothMapObexServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[showSubSelectDialog] isSingleRecipient = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " recipentNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapObexServer;->updateSubInfoList()Ljava/util/List;

    move-result-object v3

    .line 1246
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v10, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1247
    .local v10, "adapter":Lcom/android/bluetooth/map/BluetoothMapSubAdapter;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v11, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1248
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/map/BluetoothMapObexServer;->mContext:Landroid/content/Context;

    const v2, 0x7f050004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1249
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1250
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/bluetooth/map/BluetoothMapObexServer$2;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;Ljava/util/List;Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V

    invoke-virtual {v11, v10, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1265
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;-><init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;)V

    invoke-virtual {v11, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1271
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 1272
    .local v16, "subSelectDialog":Landroid/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1273
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 1274
    return-void
.end method

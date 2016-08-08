.class public Lcom/android/bluetooth/map/BluetoothMapFolderElement;
.super Ljava/lang/Object;
.source "BluetoothMapFolderElement.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapFolderElement"

.field private static final V:Z


# instance fields
.field private mEmailFolderId:J

.field private mHasSmsMmsContent:Z

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

.field private mSubFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/map/BluetoothMapFolderElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parrent"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mEmailFolderId:J

    .line 55
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method private static findEmailFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 8
    .param p0, "id"    # J
    .param p2, "folder"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 130
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v6

    cmp-long v5, v6, p0

    if-nez v5, :cond_0

    .line 142
    .end local p2    # "folder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_0
    return-object p2

    .line 134
    .restart local p2    # "folder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_0
    iget-object v5, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p2, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .local v0, "arr$":[Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 137
    .local v4, "subFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-static {p0, p1, v4}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findEmailFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v3

    .line 138
    .local v3, "ret":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-eqz v3, :cond_1

    move-object p2, v3

    .line 139
    goto :goto_0

    .line 134
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .end local v3    # "ret":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .end local v4    # "subFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static getEmailFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2
    .param p0, "id"    # J
    .param p2, "folderStructure"    # Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->findEmailFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addEmailFolder(Ljava/lang/String;J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "emailFolderId"    # J

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 200
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .end local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 202
    .restart local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setEmailFolderId(J)V

    .line 205
    return-object v0
.end method

.method public addFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 165
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v1, "[MAP]BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFolder():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .end local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 168
    .restart local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    return-object v0
.end method

.method public addSmsMmsFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 181
    .local v0, "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v1, "[MAP]BluetoothMapFolderElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSmsMmsFolder():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .end local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;-><init>(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)V

    .line 184
    .restart local v0    # "newFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->setHasSmsMmsContent(Z)V

    .line 187
    return-object v0
.end method

.method public encode(II)[B
    .locals 9
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 227
    .local v4, "sw":Ljava/io/StringWriter;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 230
    .local v5, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 232
    .local v1, "folders":[Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-le p1, v6, :cond_0

    .line 233
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "FolderListingEncode: offset > subFolders.size()"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 235
    :cond_0
    add-int v3, p1, p2

    .line 236
    .local v3, "stopIndex":I
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-le v3, v6, :cond_1

    .line 237
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 240
    :cond_1
    :try_start_0
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 241
    const-string v6, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 242
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 243
    const/4 v6, 0x0

    const-string v7, "folder-listing"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const/4 v6, 0x0

    const-string v7, "version"

    const-string v8, "1.0"

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 247
    const/4 v6, 0x0

    const-string v7, "folder"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    const/4 v6, 0x0

    const-string v7, "name"

    aget-object v8, v1, v2

    invoke-virtual {v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const/4 v6, 0x0

    const-string v7, "folder"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_2
    const/4 v6, 0x0

    const-string v7, "folder-listing"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 263
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    return-object v6

    .line 253
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "[MAP]BluetoothMapFolderElement"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "error encoding folderElement"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 256
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v6, "[MAP]BluetoothMapFolderElement"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "error encoding folderElement"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 259
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "[MAP]BluetoothMapFolderElement"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "error encoding folderElement"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getEmailFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 117
    invoke-static {p1, p2, p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderById(JLcom/android/bluetooth/map/BluetoothMapFolderElement;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFolderByName(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 108
    .local v0, "folderElement":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 109
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getEmailFolderId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 113
    :cond_0
    return-object v0
.end method

.method public getEmailFolderId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mEmailFolderId:J

    return-wide v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    .line 95
    .local v0, "current":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_0
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mParent:Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v0
.end method

.method public getRoot()Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .line 152
    .local v0, "rootFolder":Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    :goto_0
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getParent()Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    return-object v0
.end method

.method public getSubFolder(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapFolderElement;
    .locals 2
    .param p1, "folderName"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    return-object v0
.end method

.method public getSubFolderCount()I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mSubFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasSmsMmsContent()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    return v0
.end method

.method public setEmailFolderId(J)V
    .locals 1
    .param p1, "emailFolderId"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mEmailFolderId:J

    .line 74
    return-void
.end method

.method public setHasSmsMmsContent(Z)V
    .locals 0
    .param p1, "hasSmsMmsContent"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->mHasSmsMmsContent:Z

    .line 78
    return-void
.end method

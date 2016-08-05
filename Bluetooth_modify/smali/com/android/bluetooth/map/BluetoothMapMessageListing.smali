.class public Lcom/android/bluetooth/map/BluetoothMapMessageListing;
.super Ljava/lang/Object;
.source "BluetoothMapMessageListing.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapMessageListing"


# instance fields
.field private hasUnread:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V
    .locals 1
    .param p1, "element"    # Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getReadBool()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    .line 53
    :cond_0
    return-void
.end method

.method public encode(Z)[B
    .locals 8
    .param p1, "includeThreadId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 95
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 97
    .local v4, "xmlMsgElement":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 98
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 100
    const/4 v5, 0x0

    const-string v6, "MAP-msg-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const/4 v5, 0x0

    const-string v6, "version"

    const-string v7, "1.0"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .line 104
    .local v1, "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    invoke-virtual {v1, v4, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->encode(Lorg/xmlpull/v1/XmlSerializer;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 108
    .end local v1    # "element":Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "[MAP]BluetoothMapMessageListing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[encode] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5

    .line 106
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    const-string v6, "MAP-msg-listing"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 110
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "[MAP]BluetoothMapMessageListing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[encode] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "[MAP]BluetoothMapMessageListing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[encode] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    return-object v0
.end method

.method public hasUnread()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->hasUnread:Z

    return v0
.end method

.method public segment(II)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "offset"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 124
    if-lez p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    add-int v1, p2, p1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    .line 132
    const-string v0, "[MAP]BluetoothMapMessageListing"

    const-string v1, "offset greater than list size. Returning empty list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    goto :goto_0
.end method

.method public sort()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 120
    return-void
.end method

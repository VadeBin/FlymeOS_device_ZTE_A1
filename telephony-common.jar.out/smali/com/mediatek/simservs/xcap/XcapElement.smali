.class public abstract Lcom/mediatek/simservs/xcap/XcapElement;
.super Ljava/lang/Object;
.source "XcapElement.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/Attributable;


# static fields
.field protected static final AUTH_XCAP_3GPP_INTENDED:Ljava/lang/String; = "X-3GPP-Intended-Identity"

.field protected static final COMMON_POLICY_ALIAS:Ljava/lang/String; = "cp"

.field protected static final COMMON_POLICY_NAMESPACE:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final TAG:Ljava/lang/String; = "XcapElement"

.field public static final TRUE:Ljava/lang/String; = "true"

.field protected static final XCAP_ALIAS:Ljava/lang/String; = "ss"

.field protected static final XCAP_NAMESPACE:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mCredentials:Lorg/apache/http/auth/Credentials;

.field public mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

.field public mIntendedId:Ljava/lang/String;

.field protected mNetwork:Landroid/net/Network;

.field protected mNodeUri:Ljava/lang/String;

.field public mParentUri:Ljava/lang/String;

.field public mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 68
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 85
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    .line 86
    iput-object p2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 89
    return-void
.end method

.method private getAttributeUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 145
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 146
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 470
    .local v1, "r":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .local v2, "total":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public deleteByAttrName(Ljava/lang/String;)V
    .locals 9
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v4, :cond_2

    .line 262
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 267
    .local v3, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v2, 0x0

    .line 268
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 271
    .local v1, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 272
    const/4 v4, 0x1

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 273
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-3GPP-Intended-Identity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 275
    :cond_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_3

    .line 280
    const-string v4, "info"

    const-string v5, "document deleted in xcap server..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 295
    :goto_1
    return-void

    .line 264
    .end local v1    # "headers":[Lorg/apache/http/Header;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_2
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v3}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 282
    .restart local v1    # "headers":[Lorg/apache/http/Header;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_1
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 287
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v4

    .line 290
    :catch_2
    move-exception v0

    .line 291
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 293
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1
.end method

.method public domToXmlText(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 5
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 453
    .local v1, "transFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 454
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 455
    .local v0, "buffer":Ljava/io/StringWriter;
    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 458
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getByAttrName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v7, :cond_2

    .line 161
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 166
    .local v6, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v4, 0x0

    .line 167
    .local v4, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 169
    .local v5, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 172
    .local v2, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 173
    const/4 v7, 0x1

    new-array v2, v7, [Lorg/apache/http/Header;

    .line 174
    const/4 v7, 0x0

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    const-string v9, "X-3GPP-Intended-Identity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v2, v7

    .line 176
    :cond_0
    iget-object v7, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v6, v7}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/mediatek/xcap/client/XcapClient;->get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 178
    if-eqz v4, :cond_1

    .line 179
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 180
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 181
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 183
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v3}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 197
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 199
    :goto_1
    return-object v5

    .line 163
    .end local v2    # "headers":[Lorg/apache/http/Header;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "ret":Ljava/lang/String;
    .end local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_2
    new-instance v6, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v6}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v6    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 185
    .restart local v2    # "headers":[Lorg/apache/http/Header;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    .restart local v5    # "ret":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .line 186
    :try_start_1
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    new-instance v7, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v7, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v7

    .line 194
    :catch_2
    move-exception v0

    .line 195
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    invoke-virtual {v6}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getNodeName()Ljava/lang/String;
.end method

.method public getNodeSelector()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeUri()Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v2, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    const-string v3, "simservs"

    invoke-direct {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;->queryByNodeName(Ljava/lang/String;)Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;

    move-result-object v0

    .line 128
    .local v0, "elementSelector":Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;
    iget-object v2, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    invoke-virtual {v2, v0}, Lcom/mediatek/xcap/client/uri/XcapUri;->setNodeSelector(Lcom/mediatek/xcap/client/uri/XcapUri$XcapNodeSelector;)Lcom/mediatek/xcap/client/uri/XcapUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/uri/XcapUri;->toURI()Ljava/net/URI;

    move-result-object v1

    .line 129
    .local v1, "elementURI":Ljava/net/URI;
    return-object v1
.end method

.method public getParent()Lcom/mediatek/simservs/xcap/XcapElement;
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, "pathUri":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mParentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 12
    .param p1, "xmlErrorTag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1f4

    .line 510
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 511
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 512
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 513
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6}, Lorg/xml/sax/InputSource;-><init>()V

    .line 514
    .local v6, "is":Lorg/xml/sax/InputSource;
    new-instance v8, Ljava/io/StringReader;

    invoke-virtual {p0, p2}, Lcom/mediatek/simservs/xcap/XcapElement;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 516
    invoke-virtual {v2, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 518
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v3, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 520
    .local v1, "currentNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_0

    .line 521
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 522
    .local v0, "activeElement":Lorg/w3c/dom/Element;
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 523
    .local v7, "textContent":Ljava/lang/String;
    const-string v8, "XcapElement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse409ErrorMessage:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 537
    .end local v0    # "activeElement":Lorg/w3c/dom/Element;
    .end local v7    # "textContent":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 526
    .end local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "is":Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v4

    .line 527
    .local v4, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 528
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 529
    .end local v4    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 530
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 531
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 532
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 533
    .local v4, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 534
    new-instance v8, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v8, v11}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v8

    .line 537
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "currentNode":Lorg/w3c/dom/NodeList;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "is":Lorg/xml/sax/InputSource;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 481
    const-string v5, ""

    .line 484
    .local v5, "text":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 485
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 486
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 489
    .local v2, "dis":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "buf":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 490
    const-string v6, "XcapElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 493
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "buf":Ljava/lang/String;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 494
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    return-object v5
.end method

.method protected saveContent(Ljava/lang/String;)V
    .locals 22
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v15, 0x0

    .line 320
    .local v15, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    const/4 v12, 0x0

    .line 321
    .local v12, "response":Lorg/apache/http/HttpResponse;
    const/4 v6, 0x0

    .line 324
    .local v6, "headers":[Lorg/apache/http/Header;
    :try_start_0
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 326
    .local v13, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 327
    new-instance v11, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    .line 328
    .local v11, "resolver":Lcom/mediatek/xcap/client/NameResolver;
    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lcom/mediatek/xcap/client/NameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .local v3, "arr$":[Ljava/net/InetAddress;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    if-ge v7, v9, :cond_0

    aget-object v2, v3, v7

    .line 329
    .local v2, "address":Ljava/net/InetAddress;
    new-instance v16, Lcom/mediatek/xcap/client/XcapClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    move-object/from16 v17, v0

    instance-of v0, v2, Ljava/net/Inet6Address;

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;Z)V

    .end local v15    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .local v16, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v15, v16

    .line 333
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v16    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v15    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_0
    if-nez v15, :cond_2

    .line 334
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v18, 0x1f4

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    .end local v3    # "arr$":[Ljava/net/InetAddress;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "resolver":Lcom/mediatek/xcap/client/NameResolver;
    .end local v13    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v4

    .line 389
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 390
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    invoke-virtual {v15}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v17

    .line 337
    .restart local v13    # "uri":Ljava/net/URI;
    :cond_1
    :try_start_2
    new-instance v16, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .end local v15    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v16    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    move-object/from16 v15, v16

    .line 340
    .end local v16    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    .restart local v15    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 341
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v6, v0, [Lorg/apache/http/Header;

    .line 342
    const/16 v17, 0x0

    new-instance v18, Lorg/apache/http/message/BasicHeader;

    const-string v19, "X-3GPP-Intended-Identity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v18, v6, v17

    .line 344
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnablePredefinedSimservSetting()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "NoReplyTimer"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 348
    const-string v17, "/data/simservs.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/simservs/xcap/XcapElement;->readXmlFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 350
    .local v14, "xMl":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 351
    move-object/from16 p1, v14

    .line 355
    .end local v14    # "xMl":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    .line 357
    .local v10, "putElementMime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/simservs/xcap/XcapElement;->mDebugParams:Lcom/mediatek/xcap/client/XcapDebugParam;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapPutElementMime()Ljava/lang/String;

    move-result-object v10

    .line 365
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v15, v13, v10, v0, v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 367
    if-eqz v12, :cond_6

    .line 368
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0xc9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 370
    :cond_5
    const-string v17, "info"

    const-string v18, "document created in xcap server..."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :cond_6
    invoke-virtual {v15}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 396
    .end local v10    # "putElementMime":Ljava/lang/String;
    .end local v13    # "uri":Ljava/net/URI;
    :goto_1
    return-void

    .line 361
    .restart local v10    # "putElementMime":Ljava/lang/String;
    .restart local v13    # "uri":Ljava/net/URI;
    :cond_7
    :try_start_3
    const-string v17, "xcap.putelcontenttype"

    const-string v18, "application/xcap-el+xml"

    invoke-static/range {v17 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 371
    :cond_8
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    const/16 v18, 0x199

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 372
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 373
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 375
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_a

    .line 376
    const-string v17, "true"

    const-string v18, "xcap.handl409"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 377
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v18, 0x199

    const-string v19, "phrase"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/mediatek/simservs/xcap/XcapElement;->parse409ErrorMessage(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(ILjava/lang/String;)V

    throw v17
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "putElementMime":Ljava/lang/String;
    .end local v13    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v4

    .line 392
    .local v4, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    invoke-virtual {v15}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 379
    .end local v4    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v10    # "putElementMime":Ljava/lang/String;
    .restart local v13    # "uri":Ljava/net/URI;
    :cond_9
    :try_start_5
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v18, 0x199

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v17

    .line 382
    :cond_a
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    const/16 v18, 0x199

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v17

    .line 385
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_b
    new-instance v17, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v17
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setByAttrName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    if-eqz v4, :cond_3

    .line 214
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    invoke-direct {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;-><init>(Landroid/net/Network;)V

    .line 219
    .local v3, "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :goto_0
    const/4 v2, 0x0

    .line 220
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const/4 v1, 0x0

    .line 223
    .local v1, "headers":[Lorg/apache/http/Header;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 224
    const/4 v4, 0x1

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 225
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-3GPP-Intended-Identity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mIntendedId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 227
    :cond_0
    iget-object v4, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-virtual {v3, v4}, Lcom/mediatek/xcap/client/XcapClient;->setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->getAttributeUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    const-string v5, "application/xcap-att+xml"

    invoke-virtual {v3, v4, v5, p2, v1}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_2

    .line 232
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_4

    .line 234
    :cond_1
    const-string v4, "info"

    const-string v5, "document created in xcap server..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    .line 249
    :goto_1
    return-void

    .line 216
    .end local v1    # "headers":[Lorg/apache/http/Header;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    :cond_3
    new-instance v3, Lcom/mediatek/xcap/client/XcapClient;

    invoke-direct {v3}, Lcom/mediatek/xcap/client/XcapClient;-><init>()V

    .restart local v3    # "xcapClient":Lcom/mediatek/xcap/client/XcapClient;
    goto :goto_0

    .line 236
    .restart local v1    # "headers":[Lorg/apache/http/Header;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_1
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1

    .line 241
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    new-instance v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-direct {v4, v0}, Lcom/mediatek/simservs/xcap/XcapException;-><init>(Ljava/io/IOException;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    throw v4

    .line 244
    :catch_2
    move-exception v0

    .line 245
    .local v0, "e":Ljava/net/URISyntaxException;
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    invoke-virtual {v3}, Lcom/mediatek/xcap/client/XcapClient;->shutdown()V

    goto :goto_1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/simservs/xcap/XcapException;
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/xcap/XcapElement;->getNodeUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNodeUri:Ljava/lang/String;

    .line 306
    invoke-virtual {p0, p1}, Lcom/mediatek/simservs/xcap/XcapElement;->saveContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mContext:Landroid/content/Context;

    .line 112
    :cond_0
    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v0, "XcapElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XCAP dedicated network netid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/mediatek/simservs/xcap/XcapElement;->mNetwork:Landroid/net/Network;

    .line 101
    :cond_0
    return-void
.end method

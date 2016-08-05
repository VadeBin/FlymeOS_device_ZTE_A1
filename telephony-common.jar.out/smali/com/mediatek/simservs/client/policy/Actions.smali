.class public Lcom/mediatek/simservs/client/policy/Actions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Actions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:actions"

.field static final TAG_ALLOW:Ljava/lang/String; = "allow"

.field static final TAG_FORWARD_TO:Ljava/lang/String; = "forward-to"


# instance fields
.field public mAllow:Z

.field public mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 51
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/Actions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getFowardTo()Lcom/mediatek/simservs/client/policy/ForwardTo;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "cp:actions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 9
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v2, 0x0

    .line 61
    move-object v5, p1

    check-cast v5, Lorg/w3c/dom/Element;

    .line 62
    .local v5, "domElement":Lorg/w3c/dom/Element;
    const-string v0, "allow"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 63
    .local v6, "actionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 65
    .local v7, "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "allowed":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 83
    .end local v7    # "allowElement":Lorg/w3c/dom/Element;
    .end local v8    # "allowed":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v0, "forward-to"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 84
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_3

    .line 85
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 103
    :goto_1
    return-void

    .line 68
    :cond_1
    const-string v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v1, "allow"

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 69
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_2

    .line 70
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 71
    .restart local v7    # "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 72
    .restart local v8    # "allowed":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    goto :goto_0

    .line 74
    .end local v7    # "allowElement":Lorg/w3c/dom/Element;
    .end local v8    # "allowed":Ljava/lang/String;
    :cond_2
    const-string v0, "ss:allow"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 75
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 77
    .restart local v7    # "allowElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 78
    .restart local v8    # "allowed":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    goto :goto_0

    .line 88
    .end local v7    # "allowElement":Lorg/w3c/dom/Element;
    .end local v8    # "allowed":Ljava/lang/String;
    :cond_3
    const-string v0, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v1, "forward-to"

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 89
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_4

    .line 90
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto :goto_1

    .line 93
    :cond_4
    const-string v0, "ss:forward-to"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 94
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    .line 95
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto :goto_1

    .line 98
    :cond_5
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    const-string v2, "cp:actions"

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    goto/16 :goto_1
.end method

.method public isAllow()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    return v0
.end method

.method public setAllow(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    .line 136
    return-void
.end method

.method public setFowardTo(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "notifyCaller"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/mediatek/simservs/client/policy/ForwardTo;

    iget-object v1, p0, Lcom/mediatek/simservs/client/policy/Actions;->mXcapUri:Lcom/mediatek/xcap/client/uri/XcapUri;

    iget-object v2, p0, Lcom/mediatek/simservs/client/policy/Actions;->mParentUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/simservs/client/policy/Actions;->mIntendedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/simservs/client/policy/ForwardTo;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setTarget(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v0, p2}, Lcom/mediatek/simservs/client/policy/ForwardTo;->setNotifyCaller(Z)V

    .line 154
    return-void
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 112
    const-string v4, "cp:actions"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 114
    .local v0, "actionsElement":Lorg/w3c/dom/Element;
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mForwardTo:Lcom/mediatek/simservs/client/policy/ForwardTo;

    invoke-virtual {v4, p1}, Lcom/mediatek/simservs/client/policy/ForwardTo;->toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 116
    .local v2, "forwardToElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 131
    .end local v2    # "forwardToElement":Lorg/w3c/dom/Element;
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const-string v4, "xcap.ns.ss"

    const-string v5, "false"

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "useXcapNs":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    const-string v4, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v5, "ss:allow"

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 123
    .local v1, "allowElement":Lorg/w3c/dom/Element;
    iget-boolean v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v4, :cond_1

    const-string v4, "true"

    :goto_1
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 124
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 123
    :cond_1
    const-string v4, "false"

    goto :goto_1

    .line 126
    .end local v1    # "allowElement":Lorg/w3c/dom/Element;
    :cond_2
    const-string v4, "allow"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 127
    .restart local v1    # "allowElement":Lorg/w3c/dom/Element;
    iget-boolean v4, p0, Lcom/mediatek/simservs/client/policy/Actions;->mAllow:Z

    if-eqz v4, :cond_3

    const-string v4, "true"

    :goto_2
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 128
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 127
    :cond_3
    const-string v4, "false"

    goto :goto_2
.end method

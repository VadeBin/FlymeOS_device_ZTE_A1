.class public Lcom/mediatek/simservs/client/policy/Conditions;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "Conditions.java"

# interfaces
.implements Lcom/mediatek/simservs/xcap/ConfigureType;


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "cp:conditions"

.field static final TAG_ANONYMOUS:Ljava/lang/String; = "anonymous"

.field static final TAG_BUSY:Ljava/lang/String; = "busy"

.field static final TAG_COMMUNICATION_DIVERTED:Ljava/lang/String; = "communication-diverted"

.field static final TAG_INTERNATIONAL:Ljava/lang/String; = "international"

.field static final TAG_INTERNATIONAL_EXHC:Ljava/lang/String; = "international-exHC"

.field static final TAG_MEDIA:Ljava/lang/String; = "media"

.field static final TAG_NOT_REACHABLE:Ljava/lang/String; = "not-reachable"

.field static final TAG_NOT_REGISTERED:Ljava/lang/String; = "not-registered"

.field static final TAG_NO_ANSWER:Ljava/lang/String; = "no-answer"

.field static final TAG_PRESENCE_STATUS:Ljava/lang/String; = "presence-status"

.field static final TAG_ROAMING:Ljava/lang/String; = "roaming"

.field static final TAG_RULE_DEACTIVATED:Ljava/lang/String; = "rule-deactivated"

.field static final TAG_TIME:Ljava/lang/String; = "time"


# instance fields
.field public mComprehendAnonymous:Z

.field public mComprehendBusy:Z

.field public mComprehendCommunicationDiverted:Z

.field public mComprehendInternational:Z

.field public mComprehendInternationalexHc:Z

.field public mComprehendNoAnswer:Z

.field public mComprehendNotReachable:Z

.field public mComprehendNotRegistered:Z

.field public mComprehendPresenceStatus:Z

.field public mComprehendRoaming:Z

.field public mComprehendRuleDeactivated:Z

.field public mComprehendTime:Ljava/lang/String;

.field public mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "xcapUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p2, "parentUri"    # Ljava/lang/String;
    .param p3, "intendedId"    # Ljava/lang/String;
    .param p4, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p5, "domElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 39
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 40
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 41
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 42
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 43
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 44
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 45
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 46
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 47
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 48
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 49
    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 80
    invoke-virtual {p0, p5}, Lcom/mediatek/simservs/client/policy/Conditions;->instantiateFromXmlNode(Lorg/w3c/dom/Node;)V

    .line 81
    return-void
.end method


# virtual methods
.method public addAnonymous()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 580
    return-void
.end method

.method public addBusy()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 500
    return-void
.end method

.method public addCommunicationDiverted()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 564
    return-void
.end method

.method public addInternational()V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 548
    return-void
.end method

.method public addInternationalExHc()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 556
    return-void
.end method

.method public addMedia(Ljava/lang/String;)V
    .locals 1
    .param p1, "media"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    return-void
.end method

.method public addNoAnswer()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 508
    return-void
.end method

.method public addNotReachable()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 516
    return-void
.end method

.method public addNotRegistered()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 524
    return-void
.end method

.method public addPresenceStatus()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 572
    return-void
.end method

.method public addRoaming()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 532
    return-void
.end method

.method public addRuleDeactivated()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 540
    return-void
.end method

.method public addTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 688
    return-void
.end method

.method public clearConditions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 720
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 721
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 722
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 723
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 724
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 725
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 726
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 727
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 728
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 729
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 730
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 734
    iput-boolean v1, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public comprehendAnonymous()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    return v0
.end method

.method public comprehendBusy()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    return v0
.end method

.method public comprehendCommunicationDiverted()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    return v0
.end method

.method public comprehendInternational()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    return v0
.end method

.method public comprehendInternationalExHc()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    return v0
.end method

.method public comprehendNoAnswer()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    return v0
.end method

.method public comprehendNotReachable()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    return v0
.end method

.method public comprehendNotRegistered()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    return v0
.end method

.method public comprehendPresenceStatus()Z
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    return v0
.end method

.method public comprehendRoaming()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    return v0
.end method

.method public comprehendRuleDeactivated()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    return v0
.end method

.method public comprehendTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMedias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    return-object v0
.end method

.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "cp:conditions"

    return-object v0
.end method

.method public instantiateFromXmlNode(Lorg/w3c/dom/Node;)V
    .locals 10
    .param p1, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 90
    move-object v2, p1

    check-cast v2, Lorg/w3c/dom/Element;

    .line 91
    .local v2, "domElement":Lorg/w3c/dom/Element;
    const-string v1, "ss:"

    .line 93
    .local v1, "conditionsPrefix":Ljava/lang/String;
    const-string v6, "busy"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 94
    .local v0, "conditionsNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_a

    .line 95
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    .line 108
    :cond_0
    :goto_0
    const-string v6, "no-answer"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_c

    .line 110
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    .line 123
    :cond_1
    :goto_1
    const-string v6, "not-reachable"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_e

    .line 125
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    .line 139
    :cond_2
    :goto_2
    const-string v6, "not-registered"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_10

    .line 141
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    .line 155
    :cond_3
    :goto_3
    const-string v6, "roaming"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_12

    .line 157
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    .line 171
    :cond_4
    :goto_4
    const-string v6, "rule-deactivated"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_14

    .line 173
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    .line 189
    :cond_5
    :goto_5
    const-string v6, "international"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_16

    .line 191
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    .line 206
    :cond_6
    :goto_6
    const-string v6, "international-exHC"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_18

    .line 208
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    .line 223
    :cond_7
    :goto_7
    const-string v6, "communication-diverted"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1a

    .line 225
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    .line 240
    :cond_8
    :goto_8
    const-string v6, "presence-status"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1c

    .line 242
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    .line 256
    :cond_9
    :goto_9
    const-string v6, "media"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 257
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    .line 258
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1e

    .line 259
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_20

    .line 260
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 261
    .local v4, "mediaElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 97
    .end local v3    # "i":I
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_a
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "busy"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_b

    .line 99
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    goto/16 :goto_0

    .line 101
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "busy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_0

    .line 103
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendBusy:Z

    goto/16 :goto_0

    .line 112
    :cond_c
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "no-answer"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_d

    .line 114
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    goto/16 :goto_1

    .line 116
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "no-answer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1

    .line 118
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNoAnswer:Z

    goto/16 :goto_1

    .line 127
    :cond_e
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "not-reachable"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_f

    .line 129
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    goto/16 :goto_2

    .line 131
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "not-reachable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_2

    .line 134
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotReachable:Z

    goto/16 :goto_2

    .line 143
    :cond_10
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "not-registered"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_11

    .line 145
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    goto/16 :goto_3

    .line 147
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "not-registered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_3

    .line 150
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendNotRegistered:Z

    goto/16 :goto_3

    .line 159
    :cond_12
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "roaming"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_13

    .line 161
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    goto/16 :goto_4

    .line 163
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "roaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_4

    .line 165
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRoaming:Z

    goto/16 :goto_4

    .line 175
    :cond_14
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "rule-deactivated"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_15

    .line 178
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    goto/16 :goto_5

    .line 180
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "rule-deactivated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_5

    .line 183
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendRuleDeactivated:Z

    goto/16 :goto_5

    .line 193
    :cond_16
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "international"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_17

    .line 195
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    goto/16 :goto_6

    .line 197
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "international"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_6

    .line 200
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternational:Z

    goto/16 :goto_6

    .line 210
    :cond_18
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "international-exHC"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_19

    .line 213
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    goto/16 :goto_7

    .line 215
    :cond_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "international-exHC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_7

    .line 218
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendInternationalexHc:Z

    goto/16 :goto_7

    .line 227
    :cond_1a
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "communication-diverted"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1b

    .line 230
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    goto/16 :goto_8

    .line 232
    :cond_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "communication-diverted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_8

    .line 235
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendCommunicationDiverted:Z

    goto/16 :goto_8

    .line 244
    :cond_1c
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "presence-status"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1d

    .line 246
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    goto/16 :goto_9

    .line 248
    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "presence-status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_9

    .line 251
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendPresenceStatus:Z

    goto/16 :goto_9

    .line 264
    :cond_1e
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "media"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_1f

    .line 266
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_20

    .line 267
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 268
    .restart local v4    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 271
    .end local v3    # "i":I
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "media"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_20

    .line 273
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_20

    .line 274
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 275
    .restart local v4    # "mediaElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 281
    .end local v3    # "i":I
    .end local v4    # "mediaElement":Lorg/w3c/dom/Element;
    :cond_20
    const-string v6, "anonymous"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_23

    .line 283
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    .line 296
    :cond_21
    :goto_d
    const-string v6, "time"

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_25

    .line 298
    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 299
    .local v5, "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    .line 314
    .end local v5    # "timeElement":Lorg/w3c/dom/Element;
    :cond_22
    :goto_e
    return-void

    .line 285
    :cond_23
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "anonymous"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_24

    .line 287
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    goto :goto_d

    .line 289
    :cond_24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "anonymous"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_21

    .line 291
    iput-boolean v8, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendAnonymous:Z

    goto :goto_d

    .line 301
    :cond_25
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "time"

    invoke-interface {v2, v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_26

    .line 303
    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 304
    .restart local v5    # "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    goto :goto_e

    .line 306
    .end local v5    # "timeElement":Lorg/w3c/dom/Element;
    :cond_26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_22

    .line 308
    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 309
    .restart local v5    # "timeElement":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    goto :goto_e
.end method

.method public toXmlElement(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 323
    const-string v6, "xcap.ns.ss"

    const-string v7, "false"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "useXcapNs":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 326
    const-string v6, "cp:conditions"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 328
    .local v1, "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 329
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:busy"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 331
    .local v0, "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 334
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 335
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:no-answer"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 337
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 340
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 341
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:not-reachable"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 343
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 346
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 347
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:not-registered"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 349
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 352
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 353
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:roaming"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 355
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 358
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 359
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:rule-deactivated"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 361
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 364
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 365
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:international"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 367
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 370
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 371
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:international-exHC"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 373
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 376
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 377
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:communication-diverted"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 379
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 382
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_8
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 383
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:presence-status"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 385
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 388
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_9
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v6, :cond_a

    .line 389
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 390
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 391
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 392
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:media"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 394
    .local v4, "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 395
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 400
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "ruleElement":Lorg/w3c/dom/Element;
    :cond_a
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 401
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:anonymous"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 403
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 406
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_b
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 407
    const-string v6, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    const-string v7, "ss:time"

    invoke-interface {p1, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 409
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 410
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_c
    move-object v2, v1

    .line 490
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    .local v2, "conditionsElement":Lorg/w3c/dom/Element;
    :goto_1
    return-object v2

    .line 415
    .end local v2    # "conditionsElement":Lorg/w3c/dom/Element;
    :cond_d
    const-string v6, "cp:conditions"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 417
    .restart local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendBusy()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 418
    const-string v6, "busy"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 419
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 422
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_e
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNoAnswer()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 423
    const-string v6, "no-answer"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 424
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 427
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_f
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotReachable()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 428
    const-string v6, "not-reachable"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 429
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 432
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_10
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendNotRegistered()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 433
    const-string v6, "not-registered"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 434
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 437
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_11
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRoaming()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 438
    const-string v6, "roaming"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 439
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 442
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_12
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendRuleDeactivated()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 443
    const-string v6, "rule-deactivated"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 444
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 447
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_13
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternational()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 448
    const-string v6, "international"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 449
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 452
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_14
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendInternationalExHc()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 453
    const-string v6, "international-exHC"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 454
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 457
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_15
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendCommunicationDiverted()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 458
    const-string v6, "communication-diverted"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 460
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 463
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_16
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendPresenceStatus()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 464
    const-string v6, "presence-status"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 465
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 468
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_17
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    if-eqz v6, :cond_18

    .line 469
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_18

    .line 470
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mMedias:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 471
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 472
    const-string v6, "media"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 473
    .restart local v4    # "ruleElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 474
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    .line 479
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "ruleElement":Lorg/w3c/dom/Element;
    :cond_18
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendAnonymous()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 480
    const-string v6, "anonymous"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 481
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 484
    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_19
    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {p0}, Lcom/mediatek/simservs/client/policy/Conditions;->comprehendTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 485
    const-string v6, "time"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 486
    .restart local v0    # "conditionElement":Lorg/w3c/dom/Element;
    iget-object v6, p0, Lcom/mediatek/simservs/client/policy/Conditions;->mComprehendTime:Ljava/lang/String;

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 487
    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .end local v0    # "conditionElement":Lorg/w3c/dom/Element;
    :cond_1a
    move-object v2, v1

    .line 490
    .end local v1    # "conditionsElement":Lorg/w3c/dom/Element;
    .restart local v2    # "conditionsElement":Lorg/w3c/dom/Element;
    goto/16 :goto_1
.end method

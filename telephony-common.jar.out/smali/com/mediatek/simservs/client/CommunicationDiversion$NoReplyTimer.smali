.class public Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;
.super Lcom/mediatek/simservs/xcap/XcapElement;
.source "CommunicationDiversion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/simservs/client/CommunicationDiversion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoReplyTimer"
.end annotation


# static fields
.field public static final NODE_NAME:Ljava/lang/String; = "NoReplyTimer"


# instance fields
.field public mValue:I

.field final synthetic this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;


# direct methods
.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "credential"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 269
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/simservs/client/CommunicationDiversion;Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;I)V
    .locals 0
    .param p2, "cdUri"    # Lcom/mediatek/xcap/client/uri/XcapUri;
    .param p3, "parentUri"    # Ljava/lang/String;
    .param p4, "intendedId"    # Ljava/lang/String;
    .param p5, "credential"    # Lorg/apache/http/auth/Credentials;
    .param p6, "initValue"    # I

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->this$0:Lcom/mediatek/simservs/client/CommunicationDiversion;

    .line 283
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mediatek/simservs/xcap/XcapElement;-><init>(Lcom/mediatek/xcap/client/uri/XcapUri;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/Credentials;)V

    .line 284
    iput p6, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 285
    return-void
.end method


# virtual methods
.method protected getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string v0, "NoReplyTimer"

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    .line 298
    return-void
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/simservs/client/CommunicationDiversion$NoReplyTimer;->mValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</NoReplyTimer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

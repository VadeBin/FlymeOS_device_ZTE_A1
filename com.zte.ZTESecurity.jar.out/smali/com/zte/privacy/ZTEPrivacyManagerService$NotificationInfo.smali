.class public Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;
.super Ljava/lang/Object;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationInfo"
.end annotation


# instance fields
.field public enabled:Z

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;->pkg:Ljava/lang/String;

    .line 70
    iput-boolean p3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;->enabled:Z

    .line 71
    return-void
.end method

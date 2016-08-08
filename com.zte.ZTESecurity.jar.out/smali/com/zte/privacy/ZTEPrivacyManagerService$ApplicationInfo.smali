.class public Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;
.super Ljava/lang/Object;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationInfo"
.end annotation


# instance fields
.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 350
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;->pkg:Ljava/lang/String;

    .line 352
    iput p3, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;->uid:I

    .line 353
    return-void
.end method

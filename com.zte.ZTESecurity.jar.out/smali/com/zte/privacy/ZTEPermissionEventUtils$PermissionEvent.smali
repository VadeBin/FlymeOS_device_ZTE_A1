.class public Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;
.super Ljava/lang/Object;
.source "ZTEPermissionEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPermissionEventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionEvent"
.end annotation


# instance fields
.field public eventType:I

.field public needNotify:Z

.field public permission:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public simID:I

.field public slotID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "eventType"    # I
    .param p4, "needNotify"    # Z

    .prologue
    const/16 v0, -0x270f

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->simID:I

    .line 49
    iput v0, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->slotID:I

    .line 42
    iput-object p1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->pkg:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->permission:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->eventType:I

    .line 45
    iput-boolean p4, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->needNotify:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZII)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "eventType"    # I
    .param p4, "needNotify"    # Z
    .param p5, "simID"    # I
    .param p6, "slotID"    # I

    .prologue
    const/16 v0, -0x270f

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->simID:I

    .line 49
    iput v0, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->slotID:I

    .line 52
    iput-object p1, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->pkg:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->permission:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->eventType:I

    .line 55
    iput-boolean p4, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->needNotify:Z

    .line 56
    iput p5, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->simID:I

    .line 57
    iput p6, p0, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;->slotID:I

    .line 58
    return-void
.end method

.class public Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;
.super Ljava/lang/Object;
.source "ShotcutKeyDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShotcutKeyDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "pnAndcn"
.end annotation


# instance fields
.field cn:Ljava/lang/String;

.field pn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/shotcutkey/ShotcutKeyDB;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/ShotcutKeyDB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "packagename"    # Ljava/lang/String;
    .param p3, "classname"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->this$0:Lcom/android/shotcutkey/ShotcutKeyDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->pn:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/shotcutkey/ShotcutKeyDB$pnAndcn;->cn:Ljava/lang/String;

    .line 105
    return-void
.end method

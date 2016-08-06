.class public Lcom/android/shotcutkey/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field public static DEBUG:Z

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "ShotcutKey_"

    sput-object v0, Lcom/android/shotcutkey/MyLog;->TAG:Ljava/lang/String;

    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/shotcutkey/MyLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

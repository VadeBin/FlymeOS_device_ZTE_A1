.class final Landroid/app/ActivityThread$QueryHistoryRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHistoryRecord"
.end annotation


# instance fields
.field public mStackTrace:Ljava/lang/Throwable;

.field public mUri:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "stackTrace"    # Ljava/lang/Throwable;

    .prologue
    .line 5673
    iput-object p1, p0, Landroid/app/ActivityThread$QueryHistoryRecord;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5674
    iput-object p2, p0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    .line 5675
    iput-object p3, p0, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    .line 5676
    return-void
.end method

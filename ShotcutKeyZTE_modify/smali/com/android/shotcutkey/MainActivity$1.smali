.class Lcom/android/shotcutkey/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/MainActivity$1;)Lcom/android/shotcutkey/MainActivity;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mListAppInfo:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$0(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 145
    :try_start_0
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mGetAppThread thread start!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    new-instance v2, Lcom/android/shotcutkey/AllAppInfo;

    iget-object v3, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/shotcutkey/MainActivity;->access$2(Lcom/android/shotcutkey/MainActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/shotcutkey/AllAppInfo;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/android/shotcutkey/MainActivity;->access$3(Lcom/android/shotcutkey/MainActivity;Lcom/android/shotcutkey/AllAppInfo;)V

    .line 148
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity;->access$4(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo;

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;
    invoke-static {v3}, Lcom/android/shotcutkey/MainActivity;->access$4(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/shotcutkey/AllAppInfo;->getAllAppList(I)Ljava/util/List;

    move-result-object v2

    .line 148
    invoke-static {v0, v2}, Lcom/android/shotcutkey/MainActivity;->access$5(Lcom/android/shotcutkey/MainActivity;Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    new-instance v2, Lcom/android/shotcutkey/MainActivity$1$1;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/MainActivity$1$1;-><init>(Lcom/android/shotcutkey/MainActivity$1;)V

    invoke-static {v0, v2}, Lcom/android/shotcutkey/MainActivity;->access$7(Lcom/android/shotcutkey/MainActivity;Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;)V

    .line 162
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity;->access$4(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;

    # getter for: Lcom/android/shotcutkey/MainActivity;->mPackageChangedObserver:Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity;->access$8(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/shotcutkey/AllAppInfo;->attach(Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;)V

    .line 144
    monitor-exit v1

    .line 164
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

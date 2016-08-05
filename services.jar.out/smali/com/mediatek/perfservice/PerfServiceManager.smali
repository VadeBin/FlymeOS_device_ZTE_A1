.class public Lcom/mediatek/perfservice/PerfServiceManager;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;,
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    }
.end annotation


# static fields
.field private static final HEAP_UTILIZATION_DURING_FRAME_UPDATE:F = 0.5f

.field private static final RENDER_BIT:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"

.field private static final TOUCH_BOOST_DURATION_MS:I = 0xbb8

.field private static final UI_UPDATE_DURATION_MS:I = 0x1f4


# instance fields
.field private bDuringTouch:Z

.field private bDuringTouchBoost:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultUtilization:F

.field private mDisplayType:I

.field private mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRuntime:Ldalvik/system/VMRuntime;

.field final mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    .line 115
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PerfServiceManager"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 117
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 118
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .line 121
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    .line 122
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 123
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    .line 124
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 125
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    .line 126
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    .line 127
    const-string v1, "Created and started PerfService thread"

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/perfservice/PerfServiceManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 56
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 677
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 681
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method public static native nativePerfBoostDisable(I)I
.end method

.method public static native nativePerfBoostEnable(I)I
.end method

.method public static native nativePerfDumpAll()I
.end method

.method public static native nativePerfLevelBoost(I)I
.end method

.method public static native nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native nativePerfRestorePolicy(I)I
.end method

.method public static native nativePerfSetFavorPid(I)I
.end method

.method public static native nativePerfUserGetCapability(I)I
.end method

.method public static native nativePerfUserRegScn(II)I
.end method

.method public static native nativePerfUserRegScnConfig(IIIIII)I
.end method

.method public static native nativePerfUserScnDisable(I)I
.end method

.method public static native nativePerfUserScnDisableAll()I
.end method

.method public static native nativePerfUserScnEnable(I)I
.end method

.method public static native nativePerfUserScnReg(IIII)I
.end method

.method public static native nativePerfUserScnRegBigLittle(IIIIII)I
.end method

.method public static native nativePerfUserScnResetAll()I
.end method

.method public static native nativePerfUserScnRestoreAll()I
.end method

.method public static native nativePerfUserScnUnreg(I)I
.end method

.method public static native nativePerfUserUnregScn(I)I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 158
    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 160
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    const/16 v2, 0xbb8

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V
    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 164
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 165
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 166
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 167
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    const/4 v2, 0x1

    .line 136
    const/4 v1, 0x5

    if-ne v1, p1, :cond_1

    .line 137
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v1, :cond_0

    .line 138
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 143
    iput-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    .line 144
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V
    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 150
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 152
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 153
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 174
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 177
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 178
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 185
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 187
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 188
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 189
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    return-void
.end method

.method public dumpAll()V
    .locals 0

    .prologue
    .line 288
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfDumpAll()I

    .line 289
    return-void
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 194
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 196
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public notifyDisplayType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisplayType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 318
    iput p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 319
    return-void
.end method

.method public notifyFrameUpdate(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x7

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFrameUpdate - bDuringTouchBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 301
    if-eqz p1, :cond_0

    .line 302
    const/high16 v1, 0x800000

    or-int/2addr v1, p1

    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 304
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z

    if-nez v1, :cond_1

    .line 314
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V
    invoke-static {v1, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 309
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 310
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 311
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 312
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 313
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUserStatus - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public restorePolicy(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 296
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfRestorePolicy(I)I

    .line 297
    return-void
.end method

.method public setFavorPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 292
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 293
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public userDisable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 245
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    return-void
.end method

.method public userDisableAll()V
    .locals 2

    .prologue
    .line 276
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    return-void
.end method

.method public userEnable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 234
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 236
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 237
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 250
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 252
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 254
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 255
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 256
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    return-void
.end method

.method public userEnableTimeoutMs(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 260
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V
    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 262
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 263
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 264
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 265
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 266
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void
.end method

.method public userGetCapability(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 213
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserGetCapability(I)I

    move-result v0

    return v0
.end method

.method public userReg(IIII)I
    .locals 1
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I
    .param p3, "pid"    # I
    .param p4, "tid"    # I

    .prologue
    .line 201
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnReg(IIII)I

    move-result v0

    return v0
.end method

.method public userRegBigLittle(IIIIII)I
    .locals 1
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I
    .param p5, "pid"    # I
    .param p6, "tid"    # I

    .prologue
    .line 205
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRegBigLittle(IIIIII)I

    move-result v0

    return v0
.end method

.method public userRegScn(II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 217
    invoke-static {p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScn(II)I

    move-result v0

    return v0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 221
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScnConfig(IIIIII)I

    .line 222
    return-void
.end method

.method public userResetAll()V
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 271
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void
.end method

.method public userRestoreAll()V
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 284
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    return-void
.end method

.method public userUnreg(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 209
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnUnreg(I)I

    .line 210
    return-void
.end method

.method public userUnregScn(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 227
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 228
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

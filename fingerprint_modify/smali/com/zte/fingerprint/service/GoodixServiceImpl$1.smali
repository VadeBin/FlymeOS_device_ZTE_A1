.class Lcom/zte/fingerprint/service/GoodixServiceImpl$1;
.super Ljava/lang/Object;
.source "GoodixServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/GoodixServiceImpl;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

.field final synthetic val$index:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    iput p2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->val$uid:I

    iput p3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$000(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    iget v3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->val$uid:I

    # invokes: Lcom/zte/fingerprint/service/GoodixServiceImpl;->getPackageName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$100(Lcom/zte/fingerprint/service/GoodixServiceImpl;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$200(Lcom/zte/fingerprint/service/GoodixServiceImpl;)[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v1

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$200(Lcom/zte/fingerprint/service/GoodixServiceImpl;)[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    iget v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->val$index:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 81
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$200(Lcom/zte/fingerprint/service/GoodixServiceImpl;)[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    iget v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->val$index:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 82
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->privilegeCallback:[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$200(Lcom/zte/fingerprint/service/GoodixServiceImpl;)[Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    move-result-object v0

    iget v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$1;->val$index:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

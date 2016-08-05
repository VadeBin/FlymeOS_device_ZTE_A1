.class Lcom/zte/fingerprint/service/GoodixServiceImpl$2;
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

.field final synthetic val$pair:Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/service/GoodixServiceImpl;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    iput-object p2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;->val$pair:Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;->val$pair:Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    iput-object v1, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 116
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;->val$pair:Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    iput-object v1, v0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 117
    iget-object v0, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/GoodixServiceImpl;->callbackList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/fingerprint/service/GoodixServiceImpl;->access$300(Lcom/zte/fingerprint/service/GoodixServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$2;->val$pair:Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

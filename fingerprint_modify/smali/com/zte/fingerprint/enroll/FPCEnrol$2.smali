.class Lcom/zte/fingerprint/enroll/FPCEnrol$2;
.super Ljava/lang/Object;
.source "FPCEnrol.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/enroll/FPCEnrol;->showReenrolFingerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/enroll/FPCEnrol;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/enroll/FPCEnrol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/enroll/FPCEnrol;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol$2;->this$0:Lcom/zte/fingerprint/enroll/FPCEnrol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol$2;->this$0:Lcom/zte/fingerprint/enroll/FPCEnrol;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->finish()V

    .line 440
    return-void
.end method

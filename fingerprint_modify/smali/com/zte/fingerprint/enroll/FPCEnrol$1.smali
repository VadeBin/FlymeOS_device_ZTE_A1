.class Lcom/zte/fingerprint/enroll/FPCEnrol$1;
.super Ljava/lang/Object;
.source "FPCEnrol.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/enroll/FPCEnrol;->onCreate(Landroid/os/Bundle;)V
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
    .line 89
    iput-object p1, p0, Lcom/zte/fingerprint/enroll/FPCEnrol$1;->this$0:Lcom/zte/fingerprint/enroll/FPCEnrol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/FPCEnrol$1;->this$0:Lcom/zte/fingerprint/enroll/FPCEnrol;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/FPCEnrol;->finish()V

    .line 93
    return-void
.end method

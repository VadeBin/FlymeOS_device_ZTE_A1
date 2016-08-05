.class Lcom/zte/privacy/Dump$2$1;
.super Lcom/zte/privacy/EmptyVisitor;
.source "Dump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/Dump$2;->visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/privacy/Dump$2;

.field final synthetic val$accesFlags:I

.field final synthetic val$method:Lcom/zte/privacy/Method;


# direct methods
.method constructor <init>(Lcom/zte/privacy/Dump$2;ILcom/zte/privacy/Method;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/zte/privacy/Dump$2$1;->this$1:Lcom/zte/privacy/Dump$2;

    iput p2, p0, Lcom/zte/privacy/Dump$2$1;->val$accesFlags:I

    iput-object p3, p0, Lcom/zte/privacy/Dump$2$1;->val$method:Lcom/zte/privacy/Method;

    invoke-direct {p0}, Lcom/zte/privacy/EmptyVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitCode()Lcom/zte/privacy/DexCodeVisitor;
    .locals 4

    .prologue
    .line 288
    new-instance v1, Lcom/zte/privacy/DumpDexCodeAdapter;

    iget v0, p0, Lcom/zte/privacy/Dump$2$1;->val$accesFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/zte/privacy/Dump$2$1;->val$method:Lcom/zte/privacy/Method;

    iget-object v3, p0, Lcom/zte/privacy/Dump$2$1;->this$1:Lcom/zte/privacy/Dump$2;

    iget-object v3, v3, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v3}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/zte/privacy/DumpDexCodeAdapter;-><init>(ZLcom/zte/privacy/Method;Ljava/io/PrintWriter;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

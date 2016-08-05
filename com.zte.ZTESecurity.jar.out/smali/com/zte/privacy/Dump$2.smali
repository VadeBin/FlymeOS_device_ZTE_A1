.class Lcom/zte/privacy/Dump$2;
.super Lcom/zte/privacy/EmptyVisitor;
.source "Dump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/Dump;->visit(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/DexClassVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field field_count:I

.field method_count:I

.field final synthetic this$0:Lcom/zte/privacy/Dump;


# direct methods
.method constructor <init>(Lcom/zte/privacy/Dump;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 240
    iput-object p1, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    invoke-direct {p0}, Lcom/zte/privacy/EmptyVisitor;-><init>()V

    .line 242
    iput v0, p0, Lcom/zte/privacy/Dump$2;->field_count:I

    .line 244
    iput v0, p0, Lcom/zte/privacy/Dump$2;->method_count:I

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 249
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 250
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    const/4 v1, 0x0

    # setter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0, v1}, Lcom/zte/privacy/Dump;->access$002(Lcom/zte/privacy/Dump;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    .line 251
    invoke-super {p0}, Lcom/zte/privacy/EmptyVisitor;->visitEnd()V

    .line 252
    return-void
.end method

.method public visitField(ILcom/zte/privacy/Field;Ljava/lang/Object;)Lcom/zte/privacy/DexFieldVisitor;
    .locals 8
    .param p1, "accesFlags"    # I
    .param p2, "field"    # Lcom/zte/privacy/Field;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "//field:%04d  access:0x%04x\n"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/zte/privacy/Dump$2;->field_count:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/zte/privacy/Dump$2;->field_count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 257
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "//%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 258
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/Dump;->getAccDes(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2}, Lcom/zte/privacy/Field;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 259
    if-eqz p3, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 261
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitMethod(ILcom/zte/privacy/Method;)Lcom/zte/privacy/DexMethodVisitor;
    .locals 10
    .param p1, "accesFlags"    # I
    .param p2, "method"    # Lcom/zte/privacy/Method;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 270
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 271
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "//method:%04d  access:0x%04x\n"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p0, Lcom/zte/privacy/Dump$2;->method_count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/zte/privacy/Dump$2;->method_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 272
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "//%s\n"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 274
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "%s%s %s("

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/zte/privacy/Dump;->getAccDes(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2}, Lcom/zte/privacy/Method;->getReturnType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p2}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 275
    invoke-virtual {p2}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "ps":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    aget-object v3, v1, v7

    invoke-static {v3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 280
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/zte/privacy/Dump;->toJavaClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/zte/privacy/Dump$2;->this$0:Lcom/zte/privacy/Dump;

    # getter for: Lcom/zte/privacy/Dump;->out:Ljava/io/PrintWriter;
    invoke-static {v2}, Lcom/zte/privacy/Dump;->access$000(Lcom/zte/privacy/Dump;)Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 285
    new-instance v2, Lcom/zte/privacy/Dump$2$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/zte/privacy/Dump$2$1;-><init>(Lcom/zte/privacy/Dump$2;ILcom/zte/privacy/Method;)V

    return-object v2
.end method

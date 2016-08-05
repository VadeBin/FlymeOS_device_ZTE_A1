.class Lcom/android/bluetooth/gatt/ContextMap$Connection;
.super Ljava/lang/Object;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connection"
.end annotation


# instance fields
.field address:Ljava/lang/String;

.field appId:I

.field connId:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ContextMap;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap;ILjava/lang/String;I)V
    .locals 0
    .param p2, "connId"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "appId"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->this$0:Lcom/android/bluetooth/gatt/ContextMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p2, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    .line 54
    iput-object p3, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    .line 56
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lcom/android/bluetooth/gatt/ContextMap$Connection;, "Lcom/android/bluetooth/gatt/ContextMap<TT;>.Connection;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection: connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/gatt/ContextMap$Connection;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

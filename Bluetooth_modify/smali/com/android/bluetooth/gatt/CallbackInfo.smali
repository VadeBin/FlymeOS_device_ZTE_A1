.class Lcom/android/bluetooth/gatt/CallbackInfo;
.super Ljava/lang/Object;
.source "CallbackInfo.java"


# instance fields
.field address:Ljava/lang/String;

.field charInstId:I

.field charUuid:Ljava/util/UUID;

.field srvcInstId:I

.field srvcType:I

.field srvcUuid:Ljava/util/UUID;

.field status:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIILjava/util/UUID;ILjava/util/UUID;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Ljava/util/UUID;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Ljava/util/UUID;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    .line 40
    iput p3, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcType:I

    .line 41
    iput p4, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcInstId:I

    .line 42
    iput-object p5, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->srvcUuid:Ljava/util/UUID;

    .line 43
    iput p6, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->charInstId:I

    .line 44
    iput-object p7, p0, Lcom/android/bluetooth/gatt/CallbackInfo;->charUuid:Ljava/util/UUID;

    .line 45
    return-void
.end method

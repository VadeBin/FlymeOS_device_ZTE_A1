.class Lcom/android/bluetooth/map/BluetoothMapObexServer$3;
.super Ljava/lang/Object;
.source "BluetoothMapObexServer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapObexServer;->showSubSelectDialog(Ljavax/obex/Operation;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapbMessage;Lcom/android/bluetooth/map/BluetoothMapContentObserver;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapObexServer;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapObexServer$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapObexServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1268
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1269
    return-void
.end method

.class Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3$1;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    # getter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mCheckAll:Z
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$700(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3$1;->this$1:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;

    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$3;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->mCheckAll:Z
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;->access$702(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Z)Z

    .line 279
    :cond_0
    return-void
.end method

.class Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$ChildHolder;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildHolder"
.end annotation


# instance fields
.field public cb:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$ChildHolder;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$ChildHolder;-><init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)V

    return-void
.end method

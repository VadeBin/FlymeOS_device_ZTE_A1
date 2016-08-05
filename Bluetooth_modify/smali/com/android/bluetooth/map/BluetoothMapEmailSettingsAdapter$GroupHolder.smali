.class Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$GroupHolder;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupHolder"
.end annotation


# instance fields
.field public cb:Landroid/widget/CheckBox;

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$GroupHolder;->this$0:Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$1;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter$GroupHolder;-><init>(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsAdapter;)V

    return-void
.end method

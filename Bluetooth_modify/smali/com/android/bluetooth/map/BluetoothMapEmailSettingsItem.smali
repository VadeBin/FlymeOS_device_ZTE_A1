.class public Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
.super Ljava/lang/Object;
.source "BluetoothMapEmailSettingsItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "[MAP]BluetoothMapEmailSettingsItem"

.field private static final V:Z


# instance fields
.field public mBase_uri:Ljava/lang/String;

.field public mBase_uri_no_account:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;

.field protected mIsChecked:Z

.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mProviderAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri_no_account:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri_no_account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)I
    .locals 3
    .param p1, "other"    # Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .prologue
    const/4 v0, -0x1

    .line 65
    iget-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-boolean v1, p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIsChecked:Z

    if-ne v1, v2, :cond_0

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->compareTo(Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 108
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;

    .line 110
    .local v0, "other":Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 111
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 116
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 121
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 122
    goto :goto_0

    .line 123
    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 124
    goto :goto_0

    .line 125
    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 126
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 127
    goto :goto_0

    .line 128
    :cond_a
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 129
    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 90
    const/16 v0, 0x1f

    .line 91
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 92
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 93
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 94
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 96
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 98
    return v1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 96
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 144
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mPackageName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setProviderAuthority(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerAuthority"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mProviderAuthority:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapEmailSettingsItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

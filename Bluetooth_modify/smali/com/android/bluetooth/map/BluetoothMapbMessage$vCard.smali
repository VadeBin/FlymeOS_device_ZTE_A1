.class public Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "vCard"
.end annotation


# instance fields
.field private mEmailAddresses:[Ljava/lang/String;

.field private mEnvLevel:I

.field private mFormattedName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumbers:[Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 126
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 127
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 128
    if-eqz p2, :cond_2

    .end local p2    # "formattedName":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 129
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 130
    if-eqz p4, :cond_0

    .line 131
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 132
    :cond_0
    return-void

    .line 127
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "formattedName":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 128
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    const-string p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formattedName"    # Ljava/lang/String;
    .param p3, "phoneNumbers"    # [Ljava/lang/String;
    .param p4, "emailAddresses"    # [Ljava/lang/String;
    .param p5, "envLevel"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 92
    iput p5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 93
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 94
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 95
    if-eqz p2, :cond_2

    .end local p2    # "formattedName":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 96
    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 97
    if-eqz p4, :cond_0

    .line 98
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 99
    :cond_0
    return-void

    .line 94
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "formattedName":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 95
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    const-string p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 141
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 142
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 143
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 144
    if-eqz p3, :cond_0

    .line 145
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 146
    :cond_0
    return-void

    .line 142
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumbers"    # [Ljava/lang/String;
    .param p3, "emailAddresses"    # [Ljava/lang/String;
    .param p4, "envLevel"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 110
    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    .line 111
    const-string v0, "2.1"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    .line 112
    if-eqz p1, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    .line 113
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->setPhoneNumbers([Ljava/lang/String;)V

    .line 114
    if-eqz p3, :cond_0

    .line 115
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    .line 116
    :cond_0
    return-void

    .line 112
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method

.method public static parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    .locals 12
    .param p0, "reader"    # Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;
    .param p1, "envLevel"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v5, 0x1

    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, "formattedName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 226
    .local v1, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 227
    .local v9, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 229
    .local v6, "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "line":Ljava/lang/String;
    :goto_0
    const-string v0, "END:VCARD"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 232
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 233
    const-string v0, "N:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_1

    .line 236
    aget-object v1, v8, v5

    .line 267
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 238
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 240
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_2
    const-string v0, "FN:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 242
    .restart local v8    # "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_3

    .line 243
    aget-object v2, v8, v5

    goto :goto_1

    .line 245
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 247
    .end local v8    # "parts":[Ljava/lang/String;
    :cond_4
    const-string v0, "TEL:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 248
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 249
    .restart local v8    # "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_0

    .line 250
    aget-object v0, v8, v5

    const-string v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "subParts":[Ljava/lang/String;
    if-nez v9, :cond_5

    .line 252
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .restart local v9    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v10, v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "subParts":[Ljava/lang/String;
    :cond_6
    const-string v0, "EMAIL:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "[^\\\\]:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 259
    .restart local v8    # "parts":[Ljava/lang/String;
    array-length v0, v8

    if-ne v0, v11, :cond_0

    .line 260
    aget-object v0, v8, v5

    const-string v3, "[^\\\\];"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 261
    .restart local v10    # "subParts":[Ljava/lang/String;
    if-nez v6, :cond_7

    .line 262
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .restart local v6    # "emailAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v10, v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v10    # "subParts":[Ljava/lang/String;
    :cond_8
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    if-nez v9, :cond_9

    move-object v3, v4

    :goto_2
    if-nez v6, :cond_a

    :goto_3
    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0

    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_2

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_3
.end method

.method private setPhoneNumbers([Ljava/lang/String;)V
    .locals 8
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 149
    if-eqz p1, :cond_2

    array-length v5, p1

    if-lez v5, :cond_2

    .line 150
    array-length v5, p1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .line 151
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 152
    aget-object v5, p1, v2

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "networkNumber":Ljava/lang/String;
    aget-object v5, p1, v2

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "formalNumber":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 160
    .local v0, "alpha":Ljava/lang/Boolean;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 151
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "alpha":Ljava/lang/Boolean;
    :cond_0
    move v5, v6

    .line 159
    goto :goto_1

    .line 163
    .restart local v0    # "alpha":Ljava/lang/Boolean;
    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    aget-object v7, p1, v2

    aput-object v7, v5, v2

    goto :goto_2

    .line 167
    .end local v0    # "alpha":Ljava/lang/Boolean;
    .end local v1    # "formalNumber":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "networkNumber":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 198
    const-string v5, "BEGIN:VCARD"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v5, "VERSION:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mVersion:Ljava/lang/String;

    const-string v6, "3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 202
    const-string v5, "FN:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 205
    const-string v5, "N:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 208
    .local v4, "phoneNumber":Ljava/lang/String;
    const-string v5, "TEL:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v4    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 212
    .local v1, "emailAddress":Ljava/lang/String;
    const-string v5, "EMAIL:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "emailAddress":Ljava/lang/String;
    :cond_3
    const-string v5, "END:VCARD"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    return-void
.end method

.method public getEnvLevel()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEnvLevel:I

    return v0
.end method

.method public getFirstEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mEmailAddresses:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mFormattedName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->mPhoneNumbers:[Ljava/lang/String;

    return-object v0
.end method

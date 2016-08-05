.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VCardFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    }
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private final filter:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 897
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "filter"    # [B

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    .line 914
    return-void
.end method

.method private isFilteredOut(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z
    .locals 6
    .param p1, "bit"    # Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .param p2, "vCardType21"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 901
    iget v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v1, v4, 0x1

    .line 902
    .local v1, "offset":I
    iget v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->pos:I

    rem-int/lit8 v0, v4, 0x8

    .line 903
    .local v0, "bit_pos":I
    if-nez p2, :cond_1

    iget-boolean v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->onlyCheckV21:Z

    if-eqz v4, :cond_1

    .line 907
    :cond_0
    :goto_0
    return v3

    .line 904
    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v4, p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->excludeForV21:Z

    if-eqz v4, :cond_2

    move v3, v2

    goto :goto_0

    .line 905
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 907
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    array-length v5, v5

    sub-int/2addr v5, v1

    aget-byte v4, v4, v5

    shr-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public apply(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .param p1, "vCard"    # Ljava/lang/String;
    .param p2, "vCardType21"    # Z

    .prologue
    .line 921
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->filter:[B

    if-nez v14, :cond_0

    .line 951
    .end local p1    # "vCard":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 922
    .restart local p1    # "vCard":Ljava/lang/String;
    :cond_0
    sget-object v14, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 923
    .local v13, "lines":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    .local v7, "filteredVCard":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 926
    .local v6, "filteredOut":Z
    move-object v2, v13

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v12, v2, v9

    .line 929
    .local v12, "line":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 930
    const-string v14, "[;:]"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v5, v14, v15

    .line 931
    .local v5, "currentProp":Ljava/lang/String;
    const/4 v6, 0x0

    .line 933
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->values()[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    move-result-object v3

    .local v3, "arr$":[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v8, 0x0

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v11, :cond_1

    aget-object v4, v3, v8

    .line 934
    .local v4, "bit":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    iget-object v14, v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->prop:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 935
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isFilteredOut(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z

    move-result v6

    .line 936
    const-string v14, "BluetoothPbapVcardManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "currentProp: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " filteredOut: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v4    # "bit":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    :cond_1
    const-string v14, "X-"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v6, 0x1

    .line 948
    .end local v3    # "arr$":[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .end local v5    # "currentProp":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    :cond_2
    if-nez v6, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_3
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto/16 :goto_1

    .line 933
    .end local v9    # "i$":I
    .restart local v3    # "arr$":[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .restart local v4    # "bit":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .restart local v5    # "currentProp":Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v11    # "len$":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 951
    .end local v3    # "arr$":[Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .end local v4    # "bit":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;
    .end local v5    # "currentProp":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "line":Ljava/lang/String;
    .restart local v9    # "i$":I
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public isPhotoEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 917
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;->PHOTO:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isFilteredOut(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter$FilterBit;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

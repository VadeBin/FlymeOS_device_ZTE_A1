.class public Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;
.super Lcom/android/vcard/VCardComposer;
.source "BluetoothPbapVCardComposer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothPbapVCardComposer"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFilter:[B

.field private final mIsDoCoMo:Z

.field private mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private final mVCardType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 101
    sget v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z[B)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vcardType"    # I

    .prologue
    const/4 v3, 0x0

    .line 108
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z[B)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vcardType"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z[B)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z[B)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vcardType"    # I
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "careHandlerErrors"    # Z
    .param p5, "filter"    # [B

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 136
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mVCardType:I

    .line 137
    iput-object p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 140
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mIsDoCoMo:Z

    .line 142
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, "UTF-8"

    .line 143
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 146
    .local v0, "shouldAppendCharsetParam":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mIsDoCoMo:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    .line 148
    :cond_2
    const-string v1, "SHIFT_JIS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    .line 202
    :goto_1
    const-string v1, "BluetoothPbapVCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 143
    .end local v0    # "shouldAppendCharsetParam":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    .restart local v0    # "shouldAppendCharsetParam":Z
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    const-string v1, "SHIFT_JIS"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 184
    :cond_5
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 188
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 189
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 198
    :cond_7
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;IZ[B)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vcardType"    # I
    .param p3, "careHandlerErrors"    # Z
    .param p4, "filter"    # [B

    .prologue
    .line 120
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z[B)V

    .line 121
    return-void
.end method


# virtual methods
.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    if-nez p1, :cond_0

    .line 232
    const-string v1, "BluetoothPbapVCardComposer"

    const-string v2, "The given map is null. Ignore and return empty String"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, ""

    .line 283
    :goto_0
    return-object v1

    .line 236
    :cond_0
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sUsePbapNameImprove:Z

    if-eqz v1, :cond_10

    .line 237
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;-><init>(ILjava/lang/String;)V

    .line 243
    .local v0, "builder":Lcom/android/vcard/VCardBuilder;
    :goto_1
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 245
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    :cond_1
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 250
    :cond_2
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    .line 252
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    :cond_3
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 256
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    :cond_5
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 260
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 262
    :cond_7
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 264
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 266
    :cond_9
    const-string v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 269
    :cond_a
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mVCardType:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_b

    .line 270
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 272
    :cond_b
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 274
    :cond_c
    const-string v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 276
    :cond_d
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mFilter:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 278
    :cond_e
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 280
    :cond_f
    const-string v1, "vnd.android.cursor.item/im"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 283
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 240
    .end local v0    # "builder":Lcom/android/vcard/VCardBuilder;
    :cond_10
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .restart local v0    # "builder":Lcom/android/vcard/VCardBuilder;
    goto/16 :goto_1
.end method

.method public setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 222
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    .line 223
    return-void
.end method

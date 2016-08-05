.class public Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
.super Lcom/android/vcard/VCardBuilder;
.source "BluetoothPbapVCardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;
    }
.end annotation


# static fields
.field public static final DEFAULT_EMAIL_TYPE:I = 0x3

.field public static final DEFAULT_PHONE_TYPE:I = 0x1

.field public static final DEFAULT_POSTAL_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BluetoothPbapVCardBuilder"

.field static final MAX_CHARACTER_NUMS_BASE64_V30:I = 0x4b

.field private static final PARAM_TYPE_X_IRMC_N:Ljava/lang/String; = "X-IRMC-N"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final VCARD_DATA_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field private static final VCARD_DATA_SEPARATOR:Ljava/lang/String; = ":"

.field private static final VCARD_DATA_VCARD:Ljava/lang/String; = "VCARD"

.field public static final VCARD_END_OF_LINE:Ljava/lang/String; = "\r\n"

.field private static final VCARD_ITEM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_PARAM_ENCODING_BASE64_AS_B:Ljava/lang/String; = "ENCODING=B"

.field private static final VCARD_PARAM_ENCODING_BASE64_V21:Ljava/lang/String; = "ENCODING=BASE64"

.field private static final VCARD_PARAM_ENCODING_QP:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field private static final VCARD_PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final VCARD_PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final VCARD_WS:Ljava/lang/String; = " "

.field private static final mUsePbapNameImprove:Z = true

.field private static final sAllowedAndroidPropertySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPostalTypePriorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppendTypeParamName:Z

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mCharset:Ljava/lang/String;

.field private mEndAppended:Z

.field private final mIsDoCoMo:Z

.field private final mIsJapaneseMobilePhone:Z

.field private final mIsV30OrV40:Z

.field private final mNeedsToConvertPhoneticString:Z

.field private final mOnlyOneNoteFieldIsAvailable:Z

.field private final mRefrainsQPToNameProperties:Z

.field private final mShouldAppendCharsetParam:Z

.field private final mShouldUseQuotedPrintable:Z

.field private final mUsesAndroidProperty:Z

.field private final mUsesDefactProperty:Z

.field private final mVCardCharsetParameter:Ljava/lang/String;

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v3

    const-string v2, "vnd.android.cursor.item/contact_event"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/relation"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    .line 1104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    .line 1105
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcardType"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;-><init>(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "vcardType"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 144
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    .line 146
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "BluetoothPbapVCardBuilder"

    const-string v3, "Should not use vCard 4.0 when building vCard. It is not officially published yet."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsV30OrV40:Z

    .line 152
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    .line 153
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    .line 154
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsJapaneseMobilePhone:Z

    .line 155
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->onlyOneNoteFieldIsAvailable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    .line 156
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesAndroidSpecificProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mUsesAndroidProperty:Z

    .line 157
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->usesDefactProperty(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mUsesDefactProperty:Z

    .line 158
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->shouldRefrainQPToNameProperties(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mRefrainsQPToNameProperties:Z

    .line 159
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->appendTypeParamName(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mAppendTypeParamName:Z

    .line 160
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mNeedsToConvertPhoneticString:Z

    .line 166
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "UTF-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldAppendCharsetParam:Z

    .line 169
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mCharset:Ljava/lang/String;

    .line 208
    :goto_1
    const-string v0, "CHARSET=SHIFT_JIS"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    .line 229
    :goto_2
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->clear()V

    .line 230
    return-void

    :cond_4
    move v0, v1

    .line 151
    goto :goto_0

    .line 184
    :cond_5
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 206
    :cond_6
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 210
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    const-string v0, "BluetoothPbapVCardBuilder"

    const-string v1, "Use the charset \"UTF-8\" for export."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mCharset:Ljava/lang/String;

    .line 215
    const-string v0, "CHARSET=UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2

    .line 225
    :cond_8
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mCharset:Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHARSET="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    goto :goto_2
.end method

.method private appendNamePropertiesV40(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v2, :cond_1

    .line 320
    :cond_0
    const-string v2, "BluetoothPbapVCardBuilder"

    const-string v21, "Invalid flag is used in vCard 4.0 construction. Ignored."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    :cond_2
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    return-object p0

    .line 333
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 335
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "familyName":Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "middleName":Ljava/lang/String;
    const-string v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "givenName":Ljava/lang/String;
    const-string v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "prefix":Ljava/lang/String;
    const-string v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "suffix":Ljava/lang/String;
    const-string v2, "data1"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 341
    .local v16, "formattedName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 346
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 347
    const-string v2, "FN"

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    move-object/from16 v3, v16

    .line 353
    :cond_5
    const-string v2, "data9"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 355
    .local v17, "phoneticFamilyName":Ljava/lang/String;
    const-string v2, "data8"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 357
    .local v19, "phoneticMiddleName":Ljava/lang/String;
    const-string v2, "data7"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 359
    .local v18, "phoneticGivenName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, "escapedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 361
    .local v12, "escapedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "escapedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, "escapedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 365
    .local v15, "escapedSuffix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "N"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 370
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v21, 0x3b

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 374
    .local v20, "sortAs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "SORT-AS="

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .end local v20    # "sortAs":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 395
    const-string v2, "BluetoothPbapVCardBuilder"

    const-string v21, "DISPLAY_NAME is empty."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v2

    invoke-static/range {v2 .. v7}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, "escaped":Ljava/lang/String;
    const-string v2, "FN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .end local v9    # "escaped":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 402
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, "escapedFormatted":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "FN"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v21, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendPhoneticNameFields(Landroid/content/ContentValues;)V
    .locals 14
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 676
    const-string v12, "data9"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, "tmpPhoneticFamilyName":Ljava/lang/String;
    const-string v12, "data8"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 680
    .local v11, "tmpPhoneticMiddleName":Ljava/lang/String;
    const-string v12, "data7"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, "tmpPhoneticGivenName":Ljava/lang/String;
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mNeedsToConvertPhoneticString:Z

    if-eqz v12, :cond_1

    .line 683
    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, "phoneticFamilyName":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 685
    .local v6, "phoneticMiddleName":Ljava/lang/String;
    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, "phoneticGivenName":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 696
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_0

    .line 697
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :cond_0
    :goto_1
    return-void

    .line 687
    .end local v4    # "phoneticFamilyName":Ljava/lang/String;
    .end local v5    # "phoneticGivenName":Ljava/lang/String;
    .end local v6    # "phoneticMiddleName":Ljava/lang/String;
    :cond_1
    move-object v4, v9

    .line 688
    .restart local v4    # "phoneticFamilyName":Ljava/lang/String;
    move-object v6, v11

    .line 689
    .restart local v6    # "phoneticMiddleName":Ljava/lang/String;
    move-object v5, v10

    .restart local v5    # "phoneticGivenName":Ljava/lang/String;
    goto :goto_0

    .line 710
    :cond_2
    iget v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 802
    :cond_3
    :goto_2
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mUsesDefactProperty:Z

    if-eqz v12, :cond_0

    .line 803
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 804
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_18

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    const/4 v7, 0x1

    .line 808
    .local v7, "reallyUseQuotedPrintable":Z
    :goto_3
    if-eqz v7, :cond_19

    .line 809
    invoke-direct {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "encodedPhoneticGivenName":Ljava/lang/String;
    :goto_4
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-FIRST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-direct {p0, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 815
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :cond_4
    if-eqz v7, :cond_5

    .line 819
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_5
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 827
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v7, 0x1

    .line 831
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_5
    if-eqz v7, :cond_1b

    .line 832
    invoke-direct {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "encodedPhoneticMiddleName":Ljava/lang/String;
    :goto_6
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-MIDDLE-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-direct {p0, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 838
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_7
    if-eqz v7, :cond_8

    .line 842
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_8
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 850
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v12, :cond_1c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v7, 0x1

    .line 854
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_7
    if-eqz v7, :cond_1d

    .line 855
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "encodedPhoneticFamilyName":Ljava/lang/String;
    :goto_8
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-PHONETIC-LAST-NAME"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-direct {p0, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 861
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    :cond_a
    if-eqz v7, :cond_b

    .line 865
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_b
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 712
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_c
    iget v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 713
    iget v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v12, v4, v6, v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 716
    .local v8, "sortString":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SORT-STRING"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v12}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-direct {p0, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 722
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_d
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 728
    .end local v8    # "sortString":Ljava/lang/String;
    :cond_e
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsJapaneseMobilePhone:Z

    if-eqz v12, :cond_3

    .line 742
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "SOUND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "X-IRMC-N"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v12, :cond_15

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    :cond_f
    const/4 v7, 0x1

    .line 758
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :goto_9
    if-eqz v7, :cond_16

    .line 759
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    :goto_a
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v1, v12, v13

    invoke-direct {p0, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 770
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_10
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/4 v3, 0x1

    .line 776
    .local v3, "first":Z
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 777
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const/4 v3, 0x0

    .line 780
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 781
    if-eqz v3, :cond_17

    .line 782
    const/4 v3, 0x0

    .line 786
    :goto_b
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 789
    if-nez v3, :cond_13

    .line 790
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 792
    :cond_13
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_14
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 746
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 763
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_16
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 765
    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    goto/16 :goto_a

    .line 784
    .restart local v3    # "first":Z
    :cond_17
    iget-object v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 804
    .end local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v3    # "first":Z
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 811
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_19
    invoke-direct {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    goto/16 :goto_4

    .line 827
    .end local v1    # "encodedPhoneticGivenName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 834
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_1b
    invoke-direct {p0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    goto/16 :goto_6

    .line 850
    .end local v2    # "encodedPhoneticMiddleName":Ljava/lang/String;
    .end local v7    # "reallyUseQuotedPrintable":Z
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 857
    .restart local v7    # "reallyUseQuotedPrintable":Z
    :cond_1d
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedPhoneticFamilyName":Ljava/lang/String;
    goto/16 :goto_8
.end method

.method private appendPostalsForDoCoMo(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const v7, 0x7fffffff

    .line 1117
    .local v7, "currentPriority":I
    const v1, 0x7fffffff

    .line 1118
    .local v1, "currentType":I
    const/4 v3, 0x0

    .line 1119
    .local v3, "currentContentValues":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 1120
    .local v6, "contentValues":Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    .line 1123
    const-string v0, "data2"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1124
    .local v11, "typeAsInteger":Ljava/lang/Integer;
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sPostalTypePriorityMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1125
    .local v10, "priorityAsInteger":Ljava/lang/Integer;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1127
    .local v9, "priority":I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 1128
    move v7, v9

    .line 1129
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1130
    move-object v3, v6

    .line 1131
    if-nez v9, :cond_0

    .line 1137
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "priority":I
    .end local v10    # "priorityAsInteger":Ljava/lang/Integer;
    .end local v11    # "typeAsInteger":Ljava/lang/Integer;
    :cond_1
    if-nez v3, :cond_3

    .line 1138
    const-string v0, "BluetoothPbapVCardBuilder"

    const-string v4, "Should not come here. Must have at least one postal data."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :goto_1
    return-void

    .line 1125
    .restart local v6    # "contentValues":Landroid/content/ContentValues;
    .restart local v10    # "priorityAsInteger":Ljava/lang/Integer;
    .restart local v11    # "typeAsInteger":Ljava/lang/Integer;
    :cond_2
    const v9, 0x7fffffff

    goto :goto_0

    .line 1142
    .end local v6    # "contentValues":Landroid/content/ContentValues;
    .end local v10    # "priorityAsInteger":Ljava/lang/Integer;
    .end local v11    # "typeAsInteger":Ljava/lang/Integer;
    :cond_3
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1143
    .local v2, "label":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_1
.end method

.method private appendPostalsForGeneric(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1148
    .local v3, "contentValues":Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 1151
    const-string v0, "data2"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1152
    .local v8, "typeAsInteger":Ljava/lang/Integer;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1154
    .local v1, "type":I
    :goto_1
    const-string v0, "data3"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "label":Ljava/lang/String;
    const-string v0, "is_primary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1157
    .local v7, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    move v4, v9

    .local v4, "isPrimary":Z
    :goto_2
    move-object v0, p0

    .line 1159
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V

    goto :goto_0

    .end local v1    # "type":I
    .end local v2    # "label":Ljava/lang/String;
    .end local v4    # "isPrimary":Z
    .end local v7    # "isPrimaryAsInteger":Ljava/lang/Integer;
    :cond_1
    move v1, v9

    .line 1152
    goto :goto_1

    .restart local v1    # "type":I
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v7    # "isPrimaryAsInteger":Ljava/lang/Integer;
    :cond_2
    move v4, v5

    .line 1157
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    .line 1161
    .end local v1    # "type":I
    .end local v2    # "label":Ljava/lang/String;
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v8    # "typeAsInteger":Ljava/lang/Integer;
    :cond_4
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2196
    return-void
.end method

.method private appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 2203
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mAppendTypeParamName:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-nez v0, :cond_2

    .line 2205
    :cond_1
    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    return-void
.end method

.method private appendTypeParameters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2161
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2162
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2163
    .local v3, "typeValue":Ljava/lang/String;
    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2164
    :cond_1
    iget v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2167
    .local v0, "encoded":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2171
    if-eqz v1, :cond_3

    .line 2172
    const/4 v1, 0x0

    .line 2176
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2164
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2174
    .restart local v0    # "encoded":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2178
    .end local v0    # "encoded":Ljava/lang/String;
    :cond_4
    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->isV21Word(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2181
    if-eqz v1, :cond_5

    .line 2182
    const/4 v1, 0x0

    .line 2186
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 2184
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2189
    .end local v3    # "typeValue":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "type"    # Ljava/lang/Integer;

    .prologue
    .line 1869
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    .line 1872
    const-string v1, "VOICE"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    :goto_0
    return-void

    .line 1874
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 1875
    .local v0, "phoneType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1876
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1878
    :cond_1
    const-string v1, "BluetoothPbapVCardBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported (by vCard) Phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 644
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v4, :cond_2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p2, v4, v3

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 647
    .local v1, "reallyUseQuotedPrintable":Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "encodedPart":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_0
    if-eqz v1, :cond_1

    .line 661
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    return-void

    .end local v0    # "encodedPart":Ljava/lang/String;
    .end local v1    # "reallyUseQuotedPrintable":Z
    :cond_2
    move v1, v3

    .line 644
    goto :goto_0

    .line 647
    .restart local v1    # "reallyUseQuotedPrintable":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private containsNonEmptyName(Landroid/content/ContentValues;)Z
    .locals 10
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 249
    const-string v9, "data3"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "familyName":Ljava/lang/String;
    const-string v9, "data5"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "middleName":Ljava/lang/String;
    const-string v9, "data2"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "givenName":Ljava/lang/String;
    const-string v9, "data4"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, "prefix":Ljava/lang/String;
    const-string v9, "data6"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, "suffix":Ljava/lang/String;
    const-string v9, "data9"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "phoneticFamilyName":Ljava/lang/String;
    const-string v9, "data8"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "phoneticMiddleName":Ljava/lang/String;
    const-string v9, "data7"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "phoneticGivenName":Ljava/lang/String;
    const-string v9, "data1"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2237
    const-string v5, ""

    .line 2270
    :goto_0
    return-object v5

    .line 2240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2241
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2242
    .local v2, "index":I
    const/4 v3, 0x0

    .line 2243
    .local v3, "lineCount":I
    const/4 v4, 0x0

    .line 2246
    .local v4, "strArray":[B
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2252
    :cond_1
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 2253
    const-string v5, "=%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, v4, v2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    add-int/lit8 v2, v2, 0x1

    .line 2255
    add-int/lit8 v3, v3, 0x3

    .line 2257
    const/16 v5, 0x43

    if-lt v3, v5, :cond_1

    .line 2265
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    const/4 v3, 0x0

    goto :goto_1

    .line 2247
    :catch_0
    move-exception v1

    .line 2248
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "BluetoothPbapVCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Charset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mCharset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be used. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Try default charset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_1

    .line 2270
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "unescaped"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    .line 2281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2282
    const-string v5, ""

    .line 2345
    :goto_0
    return-object v5

    .line 2285
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2286
    .local v4, "tmpBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2287
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 2288
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2289
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 2340
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2287
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2291
    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2292
    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2296
    :sswitch_1
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_2

    .line 2297
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2298
    .local v3, "nextChar":C
    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 2310
    .end local v3    # "nextChar":C
    :cond_2
    :sswitch_2
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2314
    :sswitch_3
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_3

    .line 2315
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2323
    :cond_3
    :sswitch_4
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v5, :cond_4

    .line 2324
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2325
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2327
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2332
    :sswitch_5
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_5

    .line 2333
    const-string v5, "\\,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2335
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2345
    .end local v0    # "ch":C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2289
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x2c -> :sswitch_5
        0x3b -> :sswitch_0
        0x3c -> :sswitch_4
        0x3e -> :sswitch_4
        0x5c -> :sswitch_3
    .end sparse-switch
.end method

.method private getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    .line 271
    .local v4, "primaryContentValues":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 272
    .local v5, "subprimaryContentValues":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 273
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 276
    const-string v6, "is_super_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 277
    .local v3, "isSuperPrimary":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    .line 279
    move-object v4, v0

    .line 297
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_1
    if-nez v4, :cond_2

    .line 298
    if-eqz v5, :cond_5

    .line 300
    move-object v4, v5

    .line 307
    :cond_2
    :goto_1
    return-object v4

    .line 281
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_3
    if-nez v4, :cond_0

    .line 284
    const-string v6, "is_primary"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 285
    .local v2, "isPrimary":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 287
    move-object v4, v0

    goto :goto_0

    .line 290
    :cond_4
    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->containsNonEmptyName(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    move-object v5, v0

    goto :goto_0

    .line 303
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "isPrimary":Ljava/lang/Integer;
    .end local v3    # "isSuperPrimary":Ljava/lang/Integer;
    :cond_5
    new-instance v4, Landroid/content/ContentValues;

    .end local v4    # "primaryContentValues":Landroid/content/ContentValues;
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "primaryContentValues":Landroid/content/ContentValues;
    goto :goto_1
.end method

.method private varargs shouldAppendCharsetParam([Ljava/lang/String;)Z
    .locals 7
    .param p1, "propertyValueList"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2224
    iget-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldAppendCharsetParam:Z

    if-nez v6, :cond_1

    .line 2232
    :cond_0
    :goto_0
    return v4

    .line 2227
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2228
    .local v3, "propertyValue":Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 2229
    goto :goto_0

    .line 2227
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v4, "phoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1032
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1033
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1034
    .local v1, "ch":C
    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1035
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1041
    .end local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1042
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_2
    return-object v4
.end method

.method private tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;
    .locals 25
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1182
    const-string v23, "data5"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1183
    .local v18, "rawPoBox":Ljava/lang/String;
    const-string v23, "data6"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1184
    .local v17, "rawNeighborhood":Ljava/lang/String;
    const-string v23, "data4"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1185
    .local v21, "rawStreet":Ljava/lang/String;
    const-string v23, "data7"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1186
    .local v16, "rawLocality":Ljava/lang/String;
    const-string v23, "data8"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1187
    .local v20, "rawRegion":Ljava/lang/String;
    const-string v23, "data9"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1188
    .local v19, "rawPostalCode":Ljava/lang/String;
    const-string v23, "data10"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1189
    .local v14, "rawCountry":Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v13, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    aput-object v18, v13, v23

    const/16 v23, 0x1

    aput-object v17, v13, v23

    const/16 v23, 0x2

    aput-object v21, v13, v23

    const/16 v23, 0x3

    aput-object v16, v13, v23

    const/16 v23, 0x4

    aput-object v20, v13, v23

    const/16 v23, 0x5

    aput-object v19, v13, v23

    const/16 v23, 0x6

    aput-object v14, v13, v23

    .line 1192
    .local v13, "rawAddressArray":[Ljava/lang/String;
    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->areAllEmpty([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 1193
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    const/16 v22, 0x1

    .line 1196
    .local v22, "reallyUseQuotedPrintable":Z
    :goto_0
    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_2

    const/4 v4, 0x1

    .line 1204
    .local v4, "appendCharset":Z
    :goto_1
    const/4 v8, 0x0

    .line 1229
    .local v8, "encodedNeighborhood":Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1231
    .local v9, "encodedPoBox":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1232
    .local v12, "encodedStreet":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1233
    .local v7, "encodedLocality":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1234
    .local v11, "encodedRegion":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1235
    .local v10, "encodedPostalCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1237
    .local v5, "encodedCountry":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1248
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1249
    .local v3, "addressBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 1252
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_0
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    new-instance v23, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    .line 1296
    .end local v3    # "addressBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "appendCharset":Z
    .end local v5    # "encodedCountry":Ljava/lang/String;
    .end local v7    # "encodedLocality":Ljava/lang/String;
    .end local v8    # "encodedNeighborhood":Ljava/lang/String;
    .end local v9    # "encodedPoBox":Ljava/lang/String;
    .end local v10    # "encodedPostalCode":Ljava/lang/String;
    .end local v11    # "encodedRegion":Ljava/lang/String;
    .end local v12    # "encodedStreet":Ljava/lang/String;
    .end local v22    # "reallyUseQuotedPrintable":Z
    :goto_3
    return-object v23

    .line 1193
    :cond_1
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1196
    .restart local v22    # "reallyUseQuotedPrintable":Z
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1240
    .restart local v4    # "appendCharset":Z
    .restart local v8    # "encodedNeighborhood":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1241
    .restart local v9    # "encodedPoBox":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1242
    .restart local v12    # "encodedStreet":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1243
    .restart local v7    # "encodedLocality":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1244
    .restart local v11    # "encodedRegion":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1245
    .restart local v10    # "encodedPostalCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1246
    .restart local v5    # "encodedCountry":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 1268
    .end local v4    # "appendCharset":Z
    .end local v5    # "encodedCountry":Ljava/lang/String;
    .end local v7    # "encodedLocality":Ljava/lang/String;
    .end local v8    # "encodedNeighborhood":Ljava/lang/String;
    .end local v9    # "encodedPoBox":Ljava/lang/String;
    .end local v10    # "encodedPostalCode":Ljava/lang/String;
    .end local v11    # "encodedRegion":Ljava/lang/String;
    .end local v12    # "encodedStreet":Ljava/lang/String;
    .end local v22    # "reallyUseQuotedPrintable":Z
    :cond_4
    const-string v23, "data1"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1270
    .local v15, "rawFormattedAddress":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1271
    const/16 v23, 0x0

    goto :goto_3

    .line 1273
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v22, 0x1

    .line 1276
    .restart local v22    # "reallyUseQuotedPrintable":Z
    :goto_4
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v15, v23, v24

    invoke-static/range {v23 .. v23}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    const/4 v4, 0x1

    .line 1279
    .restart local v4    # "appendCharset":Z
    :goto_5
    if-eqz v22, :cond_8

    .line 1280
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1288
    .local v6, "encodedFormattedAddress":Ljava/lang/String;
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1289
    .restart local v3    # "addressBuilder":Ljava/lang/StringBuilder;
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    new-instance v23, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v4, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;-><init>(ZZLjava/lang/String;)V

    goto/16 :goto_3

    .line 1273
    .end local v3    # "addressBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "appendCharset":Z
    .end local v6    # "encodedFormattedAddress":Ljava/lang/String;
    .end local v22    # "reallyUseQuotedPrintable":Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_4

    .line 1276
    .restart local v22    # "reallyUseQuotedPrintable":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 1282
    .restart local v4    # "appendCharset":Z
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "encodedFormattedAddress":Ljava/lang/String;
    goto :goto_6
.end method


# virtual methods
.method public appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 12
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1979
    sget-object v10, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->sAllowedAndroidPropertySet:Ljava/util/Set;

    invoke-interface {v10, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2023
    :goto_0
    return-void

    .line 1982
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    .local v5, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/16 v10, 0xf

    if-gt v1, v10, :cond_2

    .line 1984
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1985
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1986
    const-string v7, ""

    .line 1988
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1983
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1991
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v10, :cond_5

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_5

    move v3, v8

    .line 1994
    .local v3, "needCharset":Z
    :goto_2
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_6

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_6

    move v6, v8

    .line 1997
    .local v6, "reallyUseQuotedPrintable":Z
    :goto_3
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "X-ANDROID-CUSTOM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    if-eqz v3, :cond_3

    .line 1999
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    :cond_3
    if-eqz v6, :cond_4

    .line 2003
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    :cond_4
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2010
    .local v4, "rawValue":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 2011
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2019
    .local v0, "encodedValue":Ljava/lang/String;
    :goto_5
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .end local v0    # "encodedValue":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "needCharset":Z
    .end local v4    # "rawValue":Ljava/lang/String;
    .end local v6    # "reallyUseQuotedPrintable":Z
    :cond_5
    move v3, v9

    .line 1991
    goto :goto_2

    .restart local v3    # "needCharset":Z
    :cond_6
    move v6, v9

    .line 1994
    goto :goto_3

    .line 2017
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "rawValue":Ljava/lang/String;
    .restart local v6    # "reallyUseQuotedPrintable":Z
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedValue":Ljava/lang/String;
    goto :goto_5

    .line 2022
    .end local v0    # "encodedValue":Ljava/lang/String;
    .end local v4    # "rawValue":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 1661
    packed-switch p1, :pswitch_data_0

    .line 1690
    const-string v2, "BluetoothPbapVCardBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Email type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const/4 v1, 0x0

    .line 1696
    .local v1, "typeAsString":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1697
    .local v0, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1698
    const-string v2, "PREF"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1701
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p0, v2, v0, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1706
    return-void

    .line 1663
    .end local v0    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1664
    const-string v1, "CELL"

    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1665
    .end local v1    # "typeAsString":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1669
    .end local v1    # "typeAsString":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 1671
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1674
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_1
    const-string v1, "HOME"

    .line 1675
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1678
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_2
    const-string v1, "WORK"

    .line 1679
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1682
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 1683
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1686
    .end local v1    # "typeAsString":Ljava/lang/String;
    :pswitch_4
    const-string v1, "CELL"

    .line 1687
    .restart local v1    # "typeAsString":Ljava/lang/String;
    goto :goto_0

    .line 1661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public appendEmails(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1048
    const/4 v3, 0x0

    .line 1049
    .local v3, "emailAddressExists":Z
    if-eqz p1, :cond_5

    .line 1050
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1051
    .local v0, "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1052
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v12, "data1"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1053
    .local v2, "emailAddress":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1054
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1056
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1059
    const-string v12, "data2"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1060
    .local v9, "typeAsObject":Ljava/lang/Integer;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1062
    .local v8, "type":I
    :goto_1
    const-string v12, "data3"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1063
    .local v7, "label":Ljava/lang/String;
    const-string v12, "is_primary"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1064
    .local v6, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_3

    move v5, v10

    .line 1066
    .local v5, "isPrimary":Z
    :goto_2
    const/4 v3, 0x1

    .line 1067
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1068
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1069
    invoke-virtual {p0, v8, v7, v2, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1060
    .end local v5    # "isPrimary":Z
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_2
    const/4 v8, 0x3

    goto :goto_1

    .restart local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .restart local v7    # "label":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_3
    move v5, v11

    .line 1064
    goto :goto_2

    :cond_4
    move v5, v11

    goto :goto_2

    .line 1074
    .end local v0    # "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "emailAddress":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "typeAsObject":Ljava/lang/Integer;
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v12, :cond_6

    .line 1075
    const-string v12, ""

    const-string v13, ""

    invoke-virtual {p0, v10, v12, v13, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendEmailLine(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1078
    :cond_6
    return-object p0
.end method

.method public bridge synthetic appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendEvents(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 1509
    if-eqz p1, :cond_2

    .line 1510
    const/4 v9, 0x0

    .line 1511
    .local v9, "primaryBirthday":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1512
    .local v10, "secondaryBirthday":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1513
    .local v1, "contentValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 1516
    const-string v13, "data2"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 1518
    .local v3, "eventTypeAsInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 1519
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1523
    .local v2, "eventType":I
    :goto_1
    const/4 v13, 0x3

    if-ne v2, v13, :cond_a

    .line 1524
    const-string v13, "data1"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "birthdayCandidate":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1528
    const-string v13, "is_super_primary"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1530
    .local v8, "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_4

    move v7, v11

    .line 1532
    .local v7, "isSuperPrimary":Z
    :goto_2
    if-eqz v7, :cond_6

    .line 1534
    move-object v9, v0

    .line 1553
    .end local v0    # "birthdayCandidate":Ljava/lang/String;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "eventType":I
    .end local v3    # "eventTypeAsInteger":Ljava/lang/Integer;
    .end local v7    # "isSuperPrimary":Z
    .end local v8    # "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    :cond_1
    if-eqz v9, :cond_b

    .line 1554
    const-string v11, "BDAY"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "primaryBirthday":Ljava/lang/String;
    .end local v10    # "secondaryBirthday":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object p0

    .line 1521
    .restart local v1    # "contentValues":Landroid/content/ContentValues;
    .restart local v3    # "eventTypeAsInteger":Ljava/lang/Integer;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v9    # "primaryBirthday":Ljava/lang/String;
    .restart local v10    # "secondaryBirthday":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "eventType":I
    goto :goto_1

    .restart local v0    # "birthdayCandidate":Ljava/lang/String;
    .restart local v8    # "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    :cond_4
    move v7, v12

    .line 1530
    goto :goto_2

    :cond_5
    move v7, v12

    goto :goto_2

    .line 1537
    .restart local v7    # "isSuperPrimary":Z
    :cond_6
    const-string v13, "is_primary"

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1539
    .local v6, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_7

    move v5, v11

    .line 1541
    .local v5, "isPrimary":Z
    :goto_4
    if-eqz v5, :cond_9

    .line 1543
    move-object v9, v0

    goto :goto_0

    .end local v5    # "isPrimary":Z
    :cond_7
    move v5, v12

    .line 1539
    goto :goto_4

    :cond_8
    move v5, v12

    goto :goto_4

    .line 1544
    .restart local v5    # "isPrimary":Z
    :cond_9
    if-nez v10, :cond_0

    .line 1546
    move-object v10, v0

    goto :goto_0

    .line 1548
    .end local v0    # "birthdayCandidate":Ljava/lang/String;
    .end local v5    # "isPrimary":Z
    .end local v6    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "isSuperPrimary":Z
    .end local v8    # "isSuperPrimaryAsInteger":Ljava/lang/Integer;
    :cond_a
    iget-boolean v13, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v13, :cond_0

    .line 1550
    const-string v13, "vnd.android.cursor.item/contact_event"

    invoke-virtual {p0, v13, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1556
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "eventType":I
    .end local v3    # "eventTypeAsInteger":Ljava/lang/Integer;
    :cond_b
    if-eqz v10, :cond_2

    .line 1557
    const-string v11, "BDAY"

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public bridge synthetic appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendIms(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1302
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_a

    .line 1303
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1304
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v13, "data5"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1305
    .local v9, "protocolAsObject":Ljava/lang/Integer;
    if-eqz v9, :cond_0

    .line 1309
    const/4 v13, -0x1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 1310
    const-string v10, "X-CUSTOM-IM"

    .line 1311
    .local v10, "tmep":Ljava/lang/String;
    const-string v13, "data6"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, "customTypeName":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v7, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 1314
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    :cond_1
    const-string v13, "data1"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v10, v7, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1320
    .end local v1    # "customTypeName":Ljava/lang/String;
    .end local v7    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "tmep":Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lcom/android/vcard/VCardUtils;->getPropertyNameForIm(I)Ljava/lang/String;

    move-result-object v8

    .line 1321
    .local v8, "propertyName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1324
    const-string v13, "data1"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1325
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1326
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1328
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1333
    const-string v13, "data2"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1334
    .local v11, "typeAsInteger":Ljava/lang/Integer;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 1350
    const/4 v12, 0x0

    .line 1356
    .local v12, "typeAsString":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    .restart local v7    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1358
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1360
    :cond_4
    const-string v13, "is_primary"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1361
    .local v5, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_8

    const/4 v4, 0x1

    .line 1363
    .local v4, "isPrimary":Z
    :goto_3
    if-eqz v4, :cond_5

    .line 1364
    const-string v13, "PREF"

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_5
    invoke-virtual {p0, v8, v7, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1334
    .end local v4    # "isPrimary":Z
    .end local v5    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "typeAsString":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x3

    goto :goto_1

    .line 1336
    :pswitch_0
    const-string v12, "HOME"

    .line 1337
    .restart local v12    # "typeAsString":Ljava/lang/String;
    goto :goto_2

    .line 1340
    .end local v12    # "typeAsString":Ljava/lang/String;
    :pswitch_1
    const-string v12, "WORK"

    .line 1341
    .restart local v12    # "typeAsString":Ljava/lang/String;
    goto :goto_2

    .line 1344
    .end local v12    # "typeAsString":Ljava/lang/String;
    :pswitch_2
    const-string v13, "data3"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1345
    .local v6, "label":Ljava/lang/String;
    if-eqz v6, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "X-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1346
    .restart local v12    # "typeAsString":Ljava/lang/String;
    :goto_4
    goto :goto_2

    .line 1345
    .end local v12    # "typeAsString":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 1361
    .end local v6    # "label":Ljava/lang/String;
    .restart local v5    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .restart local v7    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "typeAsString":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 1370
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v7    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v9    # "protocolAsObject":Ljava/lang/Integer;
    .end local v11    # "typeAsInteger":Ljava/lang/Integer;
    .end local v12    # "typeAsString":Ljava/lang/String;
    :cond_a
    return-object p0

    .line 1334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendIms(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2062
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2063
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;
    .param p3, "needCharset"    # Z
    .param p4, "reallyUseQuotedPrintable"    # Z

    .prologue
    .line 2072
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 2073
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2066
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 2067
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2077
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 2078
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .param p4, "needCharset"    # Z
    .param p5, "reallyUseQuotedPrintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 2083
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2085
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 2088
    :cond_0
    if-eqz p4, :cond_1

    .line 2089
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    :cond_1
    if-eqz p5, :cond_2

    .line 2095
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-direct {p0, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2104
    .local v0, "encodedValue":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    return-void

    .line 2101
    .end local v0    # "encodedValue":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedValue":Ljava/lang/String;
    goto :goto_0
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p4, "needCharset"    # Z
    .param p5, "needQuotedPrintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2117
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2119
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 2122
    :cond_0
    if-eqz p4, :cond_1

    .line 2123
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    :cond_1
    if-eqz p5, :cond_2

    .line 2127
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2131
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    const/4 v1, 0x1

    .line 2133
    .local v1, "first":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2135
    .local v3, "rawValue":Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 2136
    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, "encodedValue":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_4

    .line 2146
    const/4 v1, 0x0

    .line 2150
    :goto_2
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2142
    .end local v0    # "encodedValue":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "encodedValue":Ljava/lang/String;
    goto :goto_1

    .line 2148
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2152
    .end local v0    # "encodedValue":Ljava/lang/String;
    .end local v3    # "rawValue":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    return-void
.end method

.method public appendLine(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "needCharset"    # Z
    .param p4, "needQuotedPrintable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2111
    .local p2, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2112
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "rawValue"    # Ljava/lang/String;

    .prologue
    .line 2027
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2028
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2032
    .local p2, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2033
    return-void
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2037
    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v0

    .line 2039
    .local v4, "needCharset":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p3, v2, v1

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    .local v5, "reallyUseQuotedPrintable":Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2042
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 2044
    return-void

    .end local v4    # "needCharset":Z
    .end local v5    # "reallyUseQuotedPrintable":Z
    :cond_0
    move v4, v1

    .line 2037
    goto :goto_0

    .restart local v4    # "needCharset":Z
    :cond_1
    move v5, v1

    .line 2039
    goto :goto_1
.end method

.method public appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "rawValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2048
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldAppendCharsetParam:Z

    if-eqz v2, :cond_0

    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v0

    .line 2051
    .local v4, "needCharset":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v2, :cond_1

    invoke-static {p3}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    move v5, v0

    .local v5, "reallyUseQuotedPrintable":Z
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2054
    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2056
    return-void

    .end local v4    # "needCharset":Z
    .end local v5    # "reallyUseQuotedPrintable":Z
    :cond_0
    move v4, v1

    .line 2048
    goto :goto_0

    .restart local v4    # "needCharset":Z
    :cond_1
    move v5, v1

    .line 2051
    goto :goto_1
.end method

.method public appendNameProperties(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendNamePropertiesV40(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object p0

    .line 640
    .end local p0    # "this":Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 424
    .restart local p0    # "this":Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 429
    const-string v2, "N"

    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v2, "FN"

    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_0

    .line 432
    const-string v2, "N"

    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->getPrimaryContentValueWithStructuredName(Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v8

    .line 439
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string v2, "data3"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "familyName":Ljava/lang/String;
    const-string v2, "data5"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "middleName":Ljava/lang/String;
    const-string v2, "data2"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    .local v5, "givenName":Ljava/lang/String;
    const-string v2, "data4"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "prefix":Ljava/lang/String;
    const-string v2, "data6"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "suffix":Ljava/lang/String;
    const-string v2, "data1"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "displayName":Ljava/lang/String;
    const-string v2, "data10"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 446
    .local v21, "nameStyle":Ljava/lang/Integer;
    const/16 v18, 0x0

    .line 447
    .local v18, "fullNameStyle":I
    if-eqz v21, :cond_5

    .line 448
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 451
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 452
    :cond_6
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v3, v2, v28

    const/16 v28, 0x1

    aput-object v5, v2, v28

    const/16 v28, 0x2

    aput-object v4, v2, v28

    const/16 v28, 0x3

    aput-object v6, v2, v28

    const/16 v28, 0x4

    aput-object v7, v2, v28

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v24

    .line 454
    .local v24, "reallyAppendCharsetParameterToName":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_10

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v3, v2, v28

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v5, v2, v28

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v4, v2, v28

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v6, v2, v28

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v7, v2, v28

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_7
    const/16 v26, 0x1

    .line 463
    .local v26, "reallyUseQuotedPrintableToName":Z
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 464
    move-object/from16 v17, v9

    .line 470
    .local v17, "formattedName":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v17, v2, v28

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->shouldAppendCharsetParam([Ljava/lang/String;)Z

    move-result v23

    .line 472
    .local v23, "reallyAppendCharsetParameterToFN":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_12

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v17, v2, v28

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v25, 0x1

    .line 481
    .local v25, "reallyUseQuotedPrintableToFN":Z
    :goto_3
    if-eqz v26, :cond_13

    .line 482
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, "encodedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 484
    .local v12, "encodedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 485
    .local v13, "encodedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 486
    .local v14, "encodedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 495
    .local v15, "encodedSuffix":Ljava/lang/String;
    :goto_4
    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 499
    .local v11, "encodedFormattedname":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "N"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 501
    if-eqz v24, :cond_8

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_8
    if-eqz v26, :cond_9

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_9
    const-string v22, ""

    .line 510
    .local v22, "reGivenName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v19, 0x1

    .line 511
    .local v19, "hasGivenName":Z
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v20, 0x1

    .line 512
    .local v20, "hasMiddleName":Z
    :goto_7
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .local v27, "sb":Ljava/lang/StringBuilder;
    packed-switch v18, :pswitch_data_0

    .line 536
    if-eqz v19, :cond_a

    .line 537
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_a
    if-eqz v20, :cond_c

    .line 540
    if-eqz v19, :cond_b

    .line 541
    const-string v2, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_b
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_c
    :goto_8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 550
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mRefrainsQPToNameProperties:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v22, v2, v28

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 556
    .local v16, "encodedreGivenName":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .end local v16    # "encodedreGivenName":Ljava/lang/String;
    .end local v19    # "hasGivenName":Z
    .end local v20    # "hasMiddleName":Z
    .end local v22    # "reGivenName":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "\r\n"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "FN"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    if-eqz v23, :cond_d

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_d
    if-eqz v25, :cond_e

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "\r\n"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .end local v10    # "encodedFamily":Ljava/lang/String;
    .end local v11    # "encodedFormattedname":Ljava/lang/String;
    .end local v12    # "encodedGiven":Ljava/lang/String;
    .end local v13    # "encodedMiddle":Ljava/lang/String;
    .end local v14    # "encodedPrefix":Ljava/lang/String;
    .end local v15    # "encodedSuffix":Ljava/lang/String;
    .end local v17    # "formattedName":Ljava/lang/String;
    .end local v23    # "reallyAppendCharsetParameterToFN":Z
    .end local v24    # "reallyAppendCharsetParameterToName":Z
    .end local v25    # "reallyUseQuotedPrintableToFN":Z
    .end local v26    # "reallyUseQuotedPrintableToName":Z
    :cond_f
    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPhoneticNameFields(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 454
    .restart local v24    # "reallyAppendCharsetParameterToName":Z
    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 466
    .restart local v26    # "reallyUseQuotedPrintableToName":Z
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v2

    invoke-static/range {v2 .. v7}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "formattedName":Ljava/lang/String;
    goto/16 :goto_2

    .line 472
    .restart local v23    # "reallyAppendCharsetParameterToFN":Z
    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 488
    .restart local v25    # "reallyUseQuotedPrintableToFN":Z
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 489
    .restart local v10    # "encodedFamily":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 490
    .restart local v12    # "encodedGiven":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 491
    .restart local v13    # "encodedMiddle":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 492
    .restart local v14    # "encodedPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "encodedSuffix":Ljava/lang/String;
    goto/16 :goto_4

    .line 495
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 510
    .restart local v11    # "encodedFormattedname":Ljava/lang/String;
    .restart local v22    # "reGivenName":Ljava/lang/String;
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 511
    .restart local v19    # "hasGivenName":Z
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 517
    .restart local v20    # "hasMiddleName":Z
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    :pswitch_0
    if-eqz v20, :cond_17

    .line 518
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_17
    if-eqz v19, :cond_c

    .line 521
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 525
    :pswitch_1
    if-eqz v20, :cond_18

    .line 526
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_18
    if-eqz v19, :cond_c

    .line 529
    if-eqz v20, :cond_19

    .line 530
    const-string v2, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_19
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 554
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "encodedreGivenName":Ljava/lang/String;
    goto/16 :goto_9

    .line 566
    .end local v16    # "encodedreGivenName":Ljava/lang/String;
    .end local v19    # "hasGivenName":Z
    .end local v20    # "hasMiddleName":Z
    .end local v22    # "reGivenName":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_1e

    .line 567
    if-eqz v24, :cond_1c

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_1c
    if-eqz v26, :cond_1d

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 583
    :cond_1e
    if-eqz v24, :cond_1f

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_1f
    if-eqz v26, :cond_20

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "ENCODING=QUOTED-PRINTABLE"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 618
    .end local v10    # "encodedFamily":Ljava/lang/String;
    .end local v11    # "encodedFormattedname":Ljava/lang/String;
    .end local v12    # "encodedGiven":Ljava/lang/String;
    .end local v13    # "encodedMiddle":Ljava/lang/String;
    .end local v14    # "encodedPrefix":Ljava/lang/String;
    .end local v15    # "encodedSuffix":Ljava/lang/String;
    .end local v17    # "formattedName":Ljava/lang/String;
    .end local v23    # "reallyAppendCharsetParameterToFN":Z
    .end local v24    # "reallyAppendCharsetParameterToName":Z
    .end local v25    # "reallyUseQuotedPrintableToFN":Z
    .end local v26    # "reallyUseQuotedPrintableToName":Z
    :cond_21
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 621
    const-string v2, "N"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, ";"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "\r\n"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v2, "FN"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->buildSinglePartNameField(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v28, "\r\n"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 632
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 633
    const-string v2, "N"

    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v2, "FN"

    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 635
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v2, :cond_f

    .line 636
    const-string v2, "N"

    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 513
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNickNames(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsV30OrV40:Z

    if-eqz v4, :cond_1

    .line 878
    const/4 v3, 0x0

    .line 885
    .local v3, "useAndroidProperty":Z
    :goto_0
    if-eqz p1, :cond_3

    .line 886
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 887
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v4, "data1"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 888
    .local v2, "nickname":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 891
    if-eqz v3, :cond_2

    .line 892
    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {p0, v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 879
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "nickname":Ljava/lang/String;
    .end local v3    # "useAndroidProperty":Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v4, :cond_3

    .line 880
    const/4 v3, 0x1

    .restart local v3    # "useAndroidProperty":Z
    goto :goto_0

    .line 894
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "nickname":Ljava/lang/String;
    :cond_2
    const-string v4, "NICKNAME"

    invoke-virtual {p0, v4, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 898
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "nickname":Ljava/lang/String;
    .end local v3    # "useAndroidProperty":Z
    :cond_3
    return-object p0
.end method

.method public bridge synthetic appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNotes(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1460
    if-eqz p1, :cond_4

    .line 1461
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mOnlyOneNoteFieldIsAvailable:Z

    if-eqz v10, :cond_7

    .line 1462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1463
    .local v4, "noteBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1464
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1465
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v10, "data1"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1466
    .local v3, "note":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1467
    const-string v3, ""

    .line 1469
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 1470
    if-eqz v1, :cond_2

    .line 1471
    const/4 v1, 0x0

    .line 1475
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1473
    :cond_2
    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1478
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v3    # "note":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1481
    .local v5, "noteStr":Ljava/lang/String;
    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    move v7, v8

    .line 1483
    .local v7, "shouldAppendCharsetInfo":Z
    :goto_2
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_6

    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    move v6, v8

    .line 1486
    .local v6, "reallyUseQuotedPrintable":Z
    :goto_3
    const-string v8, "NOTE"

    invoke-virtual {p0, v8, v5, v7, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1503
    .end local v1    # "first":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "noteBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "noteStr":Ljava/lang/String;
    .end local v6    # "reallyUseQuotedPrintable":Z
    .end local v7    # "shouldAppendCharsetInfo":Z
    :cond_4
    return-object p0

    .restart local v1    # "first":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "noteBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "noteStr":Ljava/lang/String;
    :cond_5
    move v7, v9

    .line 1481
    goto :goto_2

    .restart local v7    # "shouldAppendCharsetInfo":Z
    :cond_6
    move v6, v9

    .line 1483
    goto :goto_3

    .line 1489
    .end local v1    # "first":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "noteBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "noteStr":Ljava/lang/String;
    .end local v7    # "shouldAppendCharsetInfo":Z
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1490
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v10, "data1"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1491
    .restart local v5    # "noteStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1492
    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    move v7, v8

    .line 1494
    .restart local v7    # "shouldAppendCharsetInfo":Z
    :goto_5
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_a

    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    move v6, v8

    .line 1497
    .restart local v6    # "reallyUseQuotedPrintable":Z
    :goto_6
    const-string v10, "NOTE"

    invoke-virtual {p0, v10, v5, v7, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .end local v6    # "reallyUseQuotedPrintable":Z
    .end local v7    # "shouldAppendCharsetInfo":Z
    :cond_9
    move v7, v9

    .line 1492
    goto :goto_5

    .restart local v7    # "shouldAppendCharsetInfo":Z
    :cond_a
    move v6, v9

    .line 1494
    goto :goto_6
.end method

.method public bridge synthetic appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendOrganizations(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1392
    if-eqz p1, :cond_b

    .line 1393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1394
    .local v1, "contentValues":Landroid/content/ContentValues;
    const-string v7, "data1"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    .local v0, "company":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1396
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1398
    :cond_1
    const-string v7, "data5"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1399
    .local v2, "department":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1400
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1402
    :cond_2
    const-string v7, "data4"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1403
    .local v6, "title":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1404
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1407
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1408
    .local v4, "orgBuilder":Ljava/lang/StringBuilder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1409
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1412
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 1413
    const/16 v7, 0x3b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1415
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1418
    .local v5, "orgline":Ljava/lang/String;
    const-string v11, "ORG"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v5, v7, v9

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v8

    :goto_1
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_8

    new-array v10, v8, [Ljava/lang/String;

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    move v10, v8

    :goto_2
    invoke-virtual {p0, v11, v5, v7, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1423
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1424
    const-string v11, "TITLE"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v6, v7, v9

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_3
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mShouldUseQuotedPrintable:Z

    if-eqz v10, :cond_a

    new-array v10, v8, [Ljava/lang/String;

    aput-object v6, v10, v9

    invoke-static {v10}, Lcom/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    move v10, v8

    :goto_4
    invoke-virtual {p0, v11, v6, v7, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_7
    move v7, v9

    .line 1418
    goto :goto_1

    :cond_8
    move v10, v9

    goto :goto_2

    :cond_9
    move v7, v9

    .line 1424
    goto :goto_3

    :cond_a
    move v10, v9

    goto :goto_4

    .line 1431
    .end local v0    # "company":Ljava/lang/String;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "department":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "orgBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "orgline":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_b
    return-object p0
.end method

.method public bridge synthetic appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 29
    .param p2, "translationCallback"    # Lcom/android/vcard/VCardPhoneNumberTranslationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/vcard/VCardPhoneNumberTranslationCallback;",
            ")",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/16 v19, 0x0

    .line 904
    .local v19, "phoneLineExists":Z
    if-eqz p1, :cond_e

    .line 905
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 906
    .local v22, "phoneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 907
    .local v7, "contentValues":Landroid/content/ContentValues;
    const-string v25, "data2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 908
    .local v24, "typeAsObject":Ljava/lang/Integer;
    const-string v25, "data3"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 909
    .local v15, "label":Ljava/lang/String;
    const-string v25, "is_primary"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 910
    .local v14, "isPrimaryAsInteger":Ljava/lang/Integer;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-lez v25, :cond_2

    const/4 v13, 0x1

    .line 912
    .local v13, "isPrimary":Z
    :goto_1
    const-string v25, "data1"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 913
    .local v20, "phoneNumber":Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 914
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 916
    :cond_1
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 920
    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 924
    .local v23, "type":I
    :goto_2
    if-eqz p2, :cond_5

    .line 925
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-interface {v0, v1, v2, v15, v13}, Lcom/android/vcard/VCardPhoneNumberTranslationCallback;->onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    .line 927
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 928
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 929
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 910
    .end local v13    # "isPrimary":Z
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v23    # "type":I
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 920
    .restart local v13    # "isPrimary":Z
    .restart local v20    # "phoneNumber":Ljava/lang/String;
    :cond_4
    const/16 v23, 0x1

    goto :goto_2

    .line 931
    .restart local v23    # "type":I
    :cond_5
    const/16 v25, 0x6

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    move/from16 v25, v0

    const/high16 v26, 0x2000000

    and-int v25, v25, v26

    if-eqz v25, :cond_7

    .line 934
    :cond_6
    const/16 v19, 0x1

    .line 935
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 936
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 940
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->splitPhoneNumbers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 941
    .local v21, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_0

    .line 944
    const/16 v19, 0x1

    .line 945
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 946
    .local v5, "actualPhoneNumber":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 950
    move-object/from16 v17, v5

    .line 956
    .local v17, "numberWithControlSequence":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 957
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .local v8, "digitsOnlyBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    .line 959
    .local v16, "length":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 960
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 961
    .local v6, "ch":C
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v25

    if-nez v25, :cond_9

    const/16 v25, 0x2b

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    const/16 v25, 0x70

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    const/16 v25, 0x77

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    const/16 v25, 0x50

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    const/16 v25, 0x57

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    const/16 v25, 0x20

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    const/16 v25, 0x2c

    move/from16 v0, v25

    if-eq v6, v0, :cond_9

    const/16 v25, 0x3b

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 963
    :cond_9
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 959
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 966
    .end local v6    # "ch":C
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v18

    .line 968
    .local v18, "phoneFormat":I
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 978
    .end local v8    # "digitsOnlyBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "i":I
    .end local v16    # "length":I
    .end local v18    # "phoneFormat":I
    .local v9, "formatted":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_c

    const-string v25, "tel:"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 981
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "tel:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 985
    :cond_c
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 986
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15, v9, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 973
    .end local v9    # "formatted":Ljava/lang/String;
    :cond_d
    move-object/from16 v9, v17

    .restart local v9    # "formatted":Ljava/lang/String;
    goto :goto_5

    .line 995
    .end local v5    # "actualPhoneNumber":Ljava/lang/String;
    .end local v7    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "formatted":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isPrimary":Z
    .end local v14    # "isPrimaryAsInteger":Ljava/lang/Integer;
    .end local v15    # "label":Ljava/lang/String;
    .end local v17    # "numberWithControlSequence":Ljava/lang/String;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    .end local v21    # "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "phoneSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "type":I
    .end local v24    # "typeAsObject":Ljava/lang/Integer;
    :cond_e
    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 996
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const-string v26, ""

    const-string v27, ""

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 999
    :cond_f
    return-object p0
.end method

.method public bridge synthetic appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "encodedValue"    # Ljava/lang/String;
    .param p2, "photoType"    # Ljava/lang/String;

    .prologue
    .line 1888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1889
    .local v6, "tmpBuilder":Ljava/lang/StringBuilder;
    const-string v8, "PHOTO"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    iget-boolean v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsV30OrV40:Z

    if-eqz v8, :cond_1

    .line 1892
    const-string v8, "ENCODING=B"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    :goto_0
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1897
    invoke-direct {p0, v6, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameter(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1898
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1902
    .local v7, "tmpStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "tmpBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1903
    .restart local v6    # "tmpBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1904
    .local v2, "lineCount":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    .line 1905
    .local v1, "length":I
    const-string v8, "\r\n"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v4, v8, 0x4b

    .line 1907
    .local v4, "maxNumForFirstLine":I
    const-string v8, " "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v5, v4, v8

    .line 1908
    .local v5, "maxNumInGeneral":I
    move v3, v4

    .line 1909
    .local v3, "maxNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1910
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1911
    add-int/lit8 v2, v2, 0x1

    .line 1912
    if-le v2, v3, :cond_0

    .line 1913
    const-string v8, "\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    move v3, v5

    .line 1916
    const/4 v2, 0x0

    .line 1909
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1894
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "lineCount":I
    .end local v3    # "maxNum":I
    .end local v4    # "maxNumForFirstLine":I
    .end local v5    # "maxNumInGeneral":I
    .end local v7    # "tmpStr":Ljava/lang/String;
    :cond_1
    const-string v8, "ENCODING=BASE64"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1919
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "lineCount":I
    .restart local v3    # "maxNum":I
    .restart local v4    # "maxNumForFirstLine":I
    .restart local v5    # "maxNumInGeneral":I
    .restart local v7    # "tmpStr":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1922
    return-void
.end method

.method public appendPhotos(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1435
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1437
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1440
    const-string v5, "data15"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1441
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 1444
    invoke-static {v1}, Lcom/android/vcard/VCardUtils;->guessImageType([B)Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, "photoType":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1446
    const-string v5, "BluetoothPbapVCardBuilder"

    const-string v6, "Unknown photo type. Ignored."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1450
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 1451
    .local v3, "photoString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1452
    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPhotoLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1456
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "data":[B
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "photoString":Ljava/lang/String;
    .end local v4    # "photoType":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public bridge synthetic appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPostalLine(ILjava/lang/String;Landroid/content/ContentValues;ZZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "contentValues"    # Landroid/content/ContentValues;
    .param p4, "isPrimary"    # Z
    .param p5, "emitEveryTime"    # Z

    .prologue
    .line 1586
    invoke-direct {p0, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->tryConstructPostalStruct(Landroid/content/ContentValues;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;

    move-result-object v3

    .line 1587
    .local v3, "postalStruct":Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;
    if-nez v3, :cond_6

    .line 1588
    if-eqz p5, :cond_5

    .line 1589
    const/4 v4, 0x0

    .line 1590
    .local v4, "reallyUseQuotedPrintable":Z
    const/4 v1, 0x0

    .line 1591
    .local v1, "appendCharset":Z
    const-string v0, ""

    .line 1602
    .local v0, "addressValue":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    .local v2, "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1604
    const-string v5, "PREF"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1631
    const-string v5, "BluetoothPbapVCardBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown StructuredPostal type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ADR"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1638
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    invoke-direct {p0, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    .line 1641
    :cond_2
    if-eqz v1, :cond_3

    .line 1646
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardCharsetParameter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    :cond_3
    if-eqz v4, :cond_4

    .line 1650
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "ENCODING=QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    .end local v0    # "addressValue":Ljava/lang/String;
    .end local v1    # "appendCharset":Z
    .end local v2    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "reallyUseQuotedPrintable":Z
    :cond_5
    return-void

    .line 1596
    :cond_6
    iget-boolean v4, v3, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;->reallyUseQuotedPrintable:Z

    .line 1597
    .restart local v4    # "reallyUseQuotedPrintable":Z
    iget-boolean v1, v3, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;->appendCharset:Z

    .line 1598
    .restart local v1    # "appendCharset":Z
    iget-object v0, v3, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder$PostalStruct;->addressData:Ljava/lang/String;

    .restart local v0    # "addressValue":Ljava/lang/String;
    goto :goto_0

    .line 1608
    .restart local v2    # "parameterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v5, "HOME"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1612
    :pswitch_1
    const-string v5, "WORK"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1616
    :pswitch_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v5}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1627
    :pswitch_3
    const-string v5, "OTHER"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public appendPostals(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "ADR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    :cond_1
    :goto_0
    return-object p0

    .line 1091
    :cond_2
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_3

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPostalsForDoCoMo(Ljava/util/List;)V

    goto :goto_0

    .line 1094
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPostalsForGeneric(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendRelation(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1565
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mUsesAndroidProperty:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1566
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1567
    .local v0, "contentValues":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1570
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendAndroidSpecificProperty(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1573
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public bridge synthetic appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendRelation(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSipAddresses(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v7, 0x4

    .line 1933
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsV30OrV40:Z

    if-eqz v5, :cond_2

    .line 1934
    const/4 v4, 0x0

    .line 1941
    .local v4, "useXProperty":Z
    :goto_0
    if-eqz p1, :cond_6

    .line 1942
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1943
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1944
    .local v3, "sipAddress":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1947
    if-eqz v4, :cond_3

    .line 1949
    const-string v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1950
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 1953
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1956
    :cond_1
    const-string v5, "X-SIP"

    invoke-virtual {p0, v5, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1935
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sipAddress":Ljava/lang/String;
    .end local v4    # "useXProperty":Z
    :cond_2
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mUsesDefactProperty:Z

    if-eqz v5, :cond_6

    .line 1936
    const/4 v4, 0x1

    .restart local v4    # "useXProperty":Z
    goto :goto_0

    .line 1958
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sipAddress":Ljava/lang/String;
    :cond_3
    const-string v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1962
    :cond_4
    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v5}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1965
    const-string v2, "TEL"

    .line 1970
    .local v2, "propertyName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1968
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_5
    const-string v2, "IMPP"

    .restart local v2    # "propertyName":Ljava/lang/String;
    goto :goto_2

    .line 1974
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "sipAddress":Ljava/lang/String;
    .end local v4    # "useXProperty":Z
    :cond_6
    return-object p0
.end method

.method public bridge synthetic appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "typeAsInteger"    # Ljava/lang/Integer;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "encodedValue"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1710
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "TEL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    if-nez p1, :cond_2

    .line 1715
    const/4 v1, 0x7

    .line 1720
    .local v1, "type":I
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1721
    .local v0, "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    packed-switch v1, :pswitch_data_0

    .line 1850
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    .line 1851
    const-string v3, "PREF"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1855
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendUncommonPhoneType(Ljava/lang/StringBuilder;Ljava/lang/Integer;)V

    .line 1860
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    return-void

    .line 1717
    .end local v0    # "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "type":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "type":I
    goto :goto_0

    .line 1723
    .restart local v0    # "parameterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1728
    :pswitch_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1733
    :pswitch_2
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "HOME"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1738
    :pswitch_3
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "FAX"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1743
    :pswitch_4
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1747
    :pswitch_5
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_3

    .line 1750
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1752
    :cond_3
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1757
    :pswitch_6
    const-string v3, "OTHER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1761
    :pswitch_7
    const-string v3, "CALLBACK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1765
    :pswitch_8
    const-string v3, "CAR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1770
    :pswitch_9
    const-string v3, "COMPANY-MAIN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    const/4 p4, 0x1

    .line 1772
    goto/16 :goto_1

    .line 1775
    :pswitch_a
    const-string v3, "ISDN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1779
    :pswitch_b
    const/4 p4, 0x1

    .line 1780
    goto/16 :goto_1

    .line 1783
    :pswitch_c
    const-string v3, "OTHER-FAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1787
    :pswitch_d
    const-string v3, "TLX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1791
    :pswitch_e
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "WORK"

    aput-object v4, v3, v5

    const-string v4, "CELL"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1796
    :pswitch_f
    const-string v3, "WORK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v3, :cond_4

    .line 1799
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1801
    :cond_4
    const-string v3, "PAGER"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1806
    :pswitch_10
    const-string v3, "MSG"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1810
    :pswitch_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1812
    const-string v3, "VOICE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1813
    :cond_5
    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->isMobilePhoneLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1814
    const-string v3, "CELL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1815
    :cond_6
    iget-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsV30OrV40:Z

    if-eqz v3, :cond_7

    .line 1817
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1819
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1820
    .local v2, "upperLabel":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1821
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1822
    :cond_8
    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v5

    invoke-static {v3}, Lcom/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1831
    .end local v2    # "upperLabel":Ljava/lang/String;
    :pswitch_12
    const-string v3, "RADIO"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1835
    :pswitch_13
    const-string v3, "TTY-TDD"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1839
    :pswitch_14
    const-string v3, "ASSISTANT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1857
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendTypeParameters(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_12
        :pswitch_d
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method public appendWebsites(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;"
        }
    .end annotation

    .prologue
    .line 1374
    .local p1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 1375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1376
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "data1"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, "website":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1378
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1383
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1384
    const-string v3, "URL"

    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLineWithCharsetAndQPDetection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1388
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "website":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method public bridge synthetic appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mEndAppended:Z

    .line 235
    const-string v0, "BEGIN"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "VERSION"

    const-string v1, "4.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 238
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "VERSION"

    const-string v1, "3.0"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    const-string v0, "BluetoothPbapVCardBuilder"

    const-string v1, "Unknown vCard version detected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    const-string v0, "VERSION"

    const-string v1, "2.1"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2350
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mEndAppended:Z

    if-nez v0, :cond_1

    .line 2351
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    .line 2352
    const-string v0, "X-CLASS"

    const-string v1, "PUBLIC"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v0, "X-REDUCTION"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    const-string v0, "X-NO"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    const-string v0, "X-DCM-HMN-MODE"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    :cond_0
    const-string v0, "END"

    const-string v1, "VCARD"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mEndAppended:Z

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVCardBuilder;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

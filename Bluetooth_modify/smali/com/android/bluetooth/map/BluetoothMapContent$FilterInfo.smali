.class Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterInfo"
.end annotation


# static fields
.field public static final TYPE_EMAIL:I = 0x2

.field public static final TYPE_MMS:I = 0x1

.field public static final TYPE_SMS:I


# instance fields
.field public mEmailColAttachementSize:I

.field public mEmailColAttachment:I

.field public mEmailColBccAddress:I

.field public mEmailColCcAddress:I

.field public mEmailColDate:I

.field public mEmailColFolder:I

.field public mEmailColFromAddress:I

.field public mEmailColId:I

.field public mEmailColPriority:I

.field public mEmailColProtected:I

.field public mEmailColRead:I

.field public mEmailColSize:I

.field public mEmailColSubject:I

.field public mEmailColThreadId:I

.field public mEmailColToAddress:I

.field public mMmsColAttachmentSize:I

.field public mMmsColDate:I

.field public mMmsColFolder:I

.field public mMmsColId:I

.field public mMmsColRead:I

.field public mMmsColSize:I

.field public mMmsColSubject:I

.field public mMmsColTextOnly:I

.field mMsgType:I

.field mPhoneAlphaTag:Ljava/lang/String;

.field mPhoneNum:Ljava/lang/String;

.field mPhoneType:I

.field public mSmsColAddress:I

.field public mSmsColDate:I

.field public mSmsColFolder:I

.field public mSmsColId:I

.field public mSmsColRead:I

.field public mSmsColSubject:I

.field public mSmsColType:I

.field final synthetic this$0:Lcom/android/bluetooth/map/BluetoothMapContent;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 148
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->this$0:Lcom/android/bluetooth/map/BluetoothMapContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 154
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    .line 155
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 158
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColThreadId:I

    .line 159
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColProtected:I

    .line 160
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColFolder:I

    .line 161
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    .line 162
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    .line 163
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColRead:I

    .line 164
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    .line 165
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    .line 166
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColPriority:I

    .line 167
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    .line 168
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColAttachment:I

    .line 169
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColAttachementSize:I

    .line 170
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    .line 171
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    .line 172
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    .line 173
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColSize:I

    .line 174
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    .line 175
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    .line 176
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColToAddress:I

    .line 177
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColCcAddress:I

    .line 178
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColBccAddress:I

    .line 179
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    .line 180
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    .line 181
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    .line 182
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColDate:I

    .line 183
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    .line 184
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColSubject:I

    .line 185
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    .line 186
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColFromAddress:I

    .line 187
    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/map/BluetoothMapContent;
    .param p2, "x1"    # Lcom/android/bluetooth/map/BluetoothMapContent$1;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;)V

    return-void
.end method


# virtual methods
.method public setEmailColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 191
    const-string v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColThreadId:I

    .line 192
    const-string v0, "flag_protected"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColProtected:I

    .line 193
    const-string v0, "folder_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColFolder:I

    .line 194
    const-string v0, "flag_read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColRead:I

    .line 195
    const-string v0, "high_priority"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColPriority:I

    .line 196
    const-string v0, "flag_attachment"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColAttachment:I

    .line 197
    const-string v0, "attachment_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColAttachementSize:I

    .line 198
    const-string v0, "message_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColSize:I

    .line 199
    const-string v0, "to_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColToAddress:I

    .line 200
    const-string v0, "cc_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColCcAddress:I

    .line 201
    const-string v0, "bcc_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColBccAddress:I

    .line 202
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColDate:I

    .line 203
    const-string v0, "subject"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColSubject:I

    .line 204
    const-string v0, "from_list"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColFromAddress:I

    .line 205
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mEmailColId:I

    .line 206
    return-void
.end method

.method public setMmsColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 219
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    .line 220
    const-string v0, "msg_box"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    .line 221
    const-string v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    .line 222
    const-string v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    .line 223
    const-string v0, "text_only"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    .line 224
    const-string v0, "m_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    .line 225
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    .line 226
    const-string v0, "sub"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    .line 228
    return-void
.end method

.method public setSmsColumns(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 209
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    .line 210
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    .line 211
    const-string v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    .line 212
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    .line 213
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    .line 214
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    .line 215
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    .line 216
    return-void
.end method

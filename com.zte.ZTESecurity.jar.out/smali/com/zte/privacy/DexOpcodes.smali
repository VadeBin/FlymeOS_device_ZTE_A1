.class public interface abstract Lcom/zte/privacy/DexOpcodes;
.super Ljava/lang/Object;
.source "DexOpcodes.java"


# static fields
.field public static final ACC_ABSTRACT:I = 0x400

.field public static final ACC_ANNOTATION:I = 0x2000

.field public static final ACC_BRIDGE:I = 0x40

.field public static final ACC_CONSTRUCTOR:I = 0x10000

.field public static final ACC_DECLARED_SYNCHRONIZED:I = 0x20000

.field public static final ACC_ENUM:I = 0x4000

.field public static final ACC_FINAL:I = 0x10

.field public static final ACC_INTERFACE:I = 0x200

.field public static final ACC_NATIVE:I = 0x100

.field public static final ACC_PRIVATE:I = 0x2

.field public static final ACC_PROTECTED:I = 0x4

.field public static final ACC_PUBLIC:I = 0x1

.field public static final ACC_STATIC:I = 0x8

.field public static final ACC_STRICT:I = 0x800

.field public static final ACC_SYNCHRONIZED:I = 0x20

.field public static final ACC_SYNTHETIC:I = 0x1000

.field public static final ACC_TRANSIENT:I = 0x80

.field public static final ACC_VARARGS:I = 0x80

.field public static final ACC_VOLATILE:I = 0x40

.field public static final OP_ADD:I = 0xff0090

.field public static final OP_ADD_INT_LIT_X:I = 0xff00d8

.field public static final OP_AGET:I = 0x44

.field public static final OP_AND:I = 0xff0095

.field public static final OP_AND_INT_LIT_X:I = 0xff00dd

.field public static final OP_APUT:I = 0x4b

.field public static final OP_ARRAY_LENGTH:I = 0x21

.field public static final OP_CHECK_CAST:I = 0x1f

.field public static final OP_CMP:I = 0xff0031

.field public static final OP_CMPG:I = 0xff0030

.field public static final OP_CMPL:I = 0xff002f

.field public static final OP_CONST:I = 0x14

.field public static final OP_CONST_CLASS:I = 0x1c

.field public static final OP_CONST_STRING:I = 0x1a

.field public static final OP_DIV:I = 0xff0093

.field public static final OP_DIV_INT_LIT_X:I = 0xff00db

.field public static final OP_FILLED_NEW_ARRAY:I = 0x24

.field public static final OP_FILL_ARRAY_DATA:I = 0x26

.field public static final OP_GOTO:I = 0x28

.field public static final OP_IF_EQ:I = 0x32

.field public static final OP_IF_EQZ:I = 0x38

.field public static final OP_IF_GE:I = 0x35

.field public static final OP_IF_GEZ:I = 0x3b

.field public static final OP_IF_GT:I = 0x36

.field public static final OP_IF_GTZ:I = 0x3c

.field public static final OP_IF_LE:I = 0x37

.field public static final OP_IF_LEZ:I = 0x3d

.field public static final OP_IF_LT:I = 0x34

.field public static final OP_IF_LTZ:I = 0x3a

.field public static final OP_IF_NE:I = 0x33

.field public static final OP_IF_NEZ:I = 0x39

.field public static final OP_IGET:I = 0x52

.field public static final OP_INSTANCE_OF:I = 0x20

.field public static final OP_INVOKE_DIRECT:I = 0x70

.field public static final OP_INVOKE_INTERFACE:I = 0x72

.field public static final OP_INVOKE_STATIC:I = 0x71

.field public static final OP_INVOKE_SUPER:I = 0x6f

.field public static final OP_INVOKE_VIRTUAL:I = 0x6e

.field public static final OP_IPUT:I = 0x59

.field public static final OP_MONITOR_ENTER:I = 0x1d

.field public static final OP_MONITOR_EXIT:I = 0x1e

.field public static final OP_MOVE:I = 0x1

.field public static final OP_MOVE_EXCEPTION:I = 0xd

.field public static final OP_MOVE_RESULT:I = 0xa

.field public static final OP_MUL:I = 0xff0092

.field public static final OP_MUL_INT_LIT_X:I = 0xff00da

.field public static final OP_NEG:I = 0xff007b

.field public static final OP_NEW_ARRAY:I = 0x23

.field public static final OP_NEW_INSTANCE:I = 0x22

.field public static final OP_NOP:I = 0x0

.field public static final OP_NOT:I = 0xff007c

.field public static final OP_OR:I = 0xff0096

.field public static final OP_OR_INT_LIT_X:I = 0xff00de

.field public static final OP_PACKED_SWITCH:I = 0x2b

.field public static final OP_REM:I = 0xff0094

.field public static final OP_REM_INT_LIT_X:I = 0xff00dc

.field public static final OP_RETURN:I = 0xf

.field public static final OP_RETURN_VOID:I = 0xe

.field public static final OP_RSUB_INT_LIT_X:I = 0xff00d9

.field public static final OP_SGET:I = 0x60

.field public static final OP_SHL:I = 0xff0098

.field public static final OP_SHL_INT_LIT_X:I = 0xff00e0

.field public static final OP_SHR:I = 0xff0099

.field public static final OP_SHR_INT_LIT_X:I = 0xff00e1

.field public static final OP_SPARSE_SWITCH:I = 0x2c

.field public static final OP_SPUT:I = 0x67

.field public static final OP_SUB:I = 0xff0091

.field public static final OP_THROW:I = 0x27

.field public static final OP_USHR:I = 0xff009a

.field public static final OP_USHR_INT_LIT_X:I = 0xff00e2

.field public static final OP_XOR:I = 0xff0097

.field public static final OP_XOR_INT_LIT_X:I = 0xff00df

.field public static final OP_X_TO_Y:I = 0xff0081

.field public static final TYPE_BOOLEAN:I = 0x3

.field public static final TYPE_BYTE:I = 0x4

.field public static final TYPE_CHAR:I = 0x5

.field public static final TYPE_DOUBLE:I = 0xa

.field public static final TYPE_FLOAT:I = 0x8

.field public static final TYPE_INT:I = 0x7

.field public static final TYPE_LONG:I = 0x9

.field public static final TYPE_OBJECT:I = 0x2

.field public static final TYPE_SHORT:I = 0x6

.field public static final TYPE_SINGLE:I = 0x0

.field public static final TYPE_WIDE:I = 0x1

.class public final enum Lcom/android/server/am/FreezeResult;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/FreezeResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_ALREADY_DIED:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_ALREADY_FROZEN:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_BOUND_TOP:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_DISABLE:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_EXCLUDE_LIST:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_EXECUTING_SERVICE:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_FLOATING_WINDOW:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_FOREGROUND_ADJ:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_FOREGROUND_SERVICE:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_KERNEL_WRITE_FAIL:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_LAUNCHING_PROVIDER:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_NOT_TARGET:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_NO_RUNNING_PROCESS:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_PROTECTED:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_RECEIVING_TOUCH_EVENT:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_RUNNING_INTENT:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_RUNNING_LOGCAT:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_SCREEN_STATE_MISMATCH:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_START_PROCESS:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SKIP_UNKNOWN:Lcom/android/server/am/FreezeResult;

.field public static final enum FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;


# instance fields
.field private final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 57

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SUCCESS:Lcom/android/server/am/FreezeResult;

    new-instance v2, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_RECENTLY_USED"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_LATEST_PROTECTED"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_ONGOING_NOTIFICATION"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_WIDGET"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_NO_APP_ICON"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_VPN_SERVICE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_ACTIVE_MUSIC_RECORD"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_ACTIVE_TRAFFIC"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_DEVICE_ADMIN"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_WALLPAPER"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_DEFAULT_APP"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v13, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_TOP"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_LOCK_SCREEN"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v15, Lcom/android/server/am/FreezeResult;

    const-string v0, "FREEZE_SKIP_SYSTEM"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const-string v1, "FREEZE_SKIP_RUNNING_LOCATION"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const-string v2, "FREEZE_SKIP_DISABLE_FORCESTOP"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v0}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const-string v2, "FREEZE_SKIP_COCKTAILBAR"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const-string v2, "FREEZE_SKIP_JOBSCHEDULER"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0, v0}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const-string v2, "FREEZE_SKIP_ACCESSIBILITY"

    move-object/from16 v21, v1

    const/16 v1, 0x13

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const-string v2, "FREEZE_SKIP_ALLOWLIST"

    move-object/from16 v22, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0, v0}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const-string v2, "FREEZE_SKIP_QUICK_TILE"

    move-object/from16 v23, v1

    const/16 v1, 0x15

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x16

    move-object/from16 v24, v0

    const-string v0, "FREEZE_SKIP_IMPORTANT_ROLE"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x17

    move-object/from16 v25, v1

    const-string v1, "FREEZE_SKIP_ACTIVE_SENSOR"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x18

    move-object/from16 v26, v0

    const-string v0, "FREEZE_SKIP_APP_CAST"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x19

    move-object/from16 v27, v1

    const-string v1, "FREEZE_SKIP_AOD_CLOCK"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x1a

    move-object/from16 v28, v0

    const-string v0, "FREEZE_SKIP_BACKUP_SERVICE"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x1b

    move-object/from16 v29, v1

    const-string v1, "FREEZE_SKIP_BLUETOOTH_CONNECTED"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x1c

    move-object/from16 v30, v0

    const-string v0, "FREEZE_SKIP_PREDOWNLOAD"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x1d

    move-object/from16 v31, v1

    const-string v1, "FREEZE_SKIP_CAMERA_IN_FGS"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x1e

    move-object/from16 v32, v0

    const-string v0, "FREEZE_SKIP_PROTECTED_PACKAGES"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x1f

    move-object/from16 v33, v1

    const-string v1, "FREEZE_SKIP_NFC_PACKAGE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x20

    move-object/from16 v34, v0

    const-string v0, "FREEZE_SKIP_CAR_CONNECTED"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x21

    move-object/from16 v35, v1

    const-string v1, "FREEZE_SKIP_RUNNING_BROADCAST"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x22

    move-object/from16 v36, v0

    const-string v0, "FREEZE_SKIP_NOT_TARGET"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_NOT_TARGET:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x23

    move-object/from16 v37, v1

    const-string v1, "FREEZE_SKIP_FLOATING_WINDOW"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_FLOATING_WINDOW:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x24

    move-object/from16 v38, v0

    const-string v0, "FREEZE_SKIP_RECEIVING_TOUCH_EVENT"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_RECEIVING_TOUCH_EVENT:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x25

    move-object/from16 v39, v1

    const-string v1, "FREEZE_SKIP_PROTECTED"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_PROTECTED:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x26

    move-object/from16 v40, v0

    const-string v0, "FREEZE_SKIP_DISABLE"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_DISABLE:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x27

    move-object/from16 v41, v1

    const-string v1, "FREEZE_SKIP_FOREGROUND_SERVICE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_FOREGROUND_SERVICE:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x28

    move-object/from16 v42, v0

    const-string v0, "FREEZE_SKIP_EXCLUDE_LIST"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXCLUDE_LIST:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x29

    move-object/from16 v43, v1

    const-string v1, "FREEZE_SKIP_NO_RUNNING_PROCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_NO_RUNNING_PROCESS:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x2a

    move-object/from16 v44, v0

    const-string v0, "FREEZE_SKIP_ALREADY_DIED"

    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_DIED:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x2b

    move-object/from16 v45, v1

    const-string v1, "FREEZE_SKIP_EXECUTING_SERVICE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_EXECUTING_SERVICE:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x2c

    move-object/from16 v46, v0

    const-string v0, "FREEZE_SKIP_RUNNING_INTENT"

    move-object/from16 v47, v3

    const/16 v3, 0x2c

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_RUNNING_INTENT:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x2d

    const-string v3, "FREEZE_SKIP_LAUNCHING_PROVIDER"

    move-object/from16 v48, v1

    const/16 v1, 0x2d

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_LAUNCHING_PROVIDER:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x2e

    const-string v3, "FREEZE_SKIP_START_PROCESS"

    move-object/from16 v49, v0

    const/16 v0, 0x2e

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_START_PROCESS:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x2f

    const-string v3, "FREEZE_SKIP_FOREGROUND_ADJ"

    move-object/from16 v50, v1

    const/16 v1, 0x2f

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_FOREGROUND_ADJ:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x30

    const-string v3, "FREEZE_SKIP_RUNNING_LOGCAT"

    move-object/from16 v51, v0

    const/16 v0, 0x30

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_RUNNING_LOGCAT:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x31

    const-string v3, "FREEZE_SKIP_BOUND_TOP"

    move-object/from16 v52, v1

    const/16 v1, 0x31

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_BOUND_TOP:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x32

    const-string v3, "FREEZE_SKIP_KERNEL_WRITE_FAIL"

    move-object/from16 v53, v0

    const/16 v0, 0x32

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_KERNEL_WRITE_FAIL:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x33

    const-string v3, "FREEZE_SKIP_ALREADY_FROZEN"

    move-object/from16 v54, v1

    const/16 v1, 0x33

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_ALREADY_FROZEN:Lcom/android/server/am/FreezeResult;

    new-instance v1, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x34

    const-string v3, "FREEZE_SKIP_SCREEN_STATE_MISMATCH"

    move-object/from16 v55, v0

    const/16 v0, 0x34

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_SCREEN_STATE_MISMATCH:Lcom/android/server/am/FreezeResult;

    new-instance v0, Lcom/android/server/am/FreezeResult;

    const/16 v2, 0x35

    const-string v3, "FREEZE_SKIP_UNKNOWN"

    move-object/from16 v56, v1

    const/16 v1, 0x35

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/FreezeResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_UNKNOWN:Lcom/android/server/am/FreezeResult;

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move-object/from16 v32, v34

    move-object/from16 v33, v35

    move-object/from16 v34, v36

    move-object/from16 v35, v37

    move-object/from16 v36, v38

    move-object/from16 v37, v39

    move-object/from16 v38, v40

    move-object/from16 v39, v41

    move-object/from16 v40, v42

    move-object/from16 v41, v43

    move-object/from16 v42, v44

    move-object/from16 v43, v45

    move-object/from16 v44, v46

    move-object/from16 v3, v47

    move-object/from16 v45, v48

    move-object/from16 v46, v49

    move-object/from16 v47, v50

    move-object/from16 v48, v51

    move-object/from16 v49, v52

    move-object/from16 v50, v53

    move-object/from16 v51, v54

    move-object/from16 v52, v55

    move-object/from16 v53, v56

    move-object/from16 v54, v0

    filled-new-array/range {v1 .. v54}, [Lcom/android/server/am/FreezeResult;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreezeResult;->$VALUES:[Lcom/android/server/am/FreezeResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/am/FreezeResult;->key:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/server/am/FreezeResult;
    .locals 5

    invoke-static {}, Lcom/android/server/am/FreezeResult;->values()[Lcom/android/server/am/FreezeResult;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/am/FreezeResult;->key:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/FreezeResult;->FREEZE_SKIP_UNKNOWN:Lcom/android/server/am/FreezeResult;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/FreezeResult;
    .locals 1

    const-class v0, Lcom/android/server/am/FreezeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreezeResult;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/FreezeResult;
    .locals 1

    sget-object v0, Lcom/android/server/am/FreezeResult;->$VALUES:[Lcom/android/server/am/FreezeResult;

    invoke-virtual {v0}, [Lcom/android/server/am/FreezeResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/FreezeResult;

    return-object v0
.end method


# virtual methods
.method public final getKey()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/FreezeResult;->key:I

    return p0
.end method

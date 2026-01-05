.class public final enum Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

.field public static final enum UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;


# instance fields
.field private final typeNum:I

.field private final unfreezeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "Total"

    const-string/jumbo v4, "UNFREEZE_TOTAL"

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Alarm"

    const-string/jumbo v5, "UNFREEZE_REASON_ALARM"

    invoke-direct {v2, v0, v3, v5, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_ALARM:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "Packet"

    const-string/jumbo v6, "UNFREEZE_REASON_PACKET"

    invoke-direct {v3, v0, v4, v6, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_PACKET:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    new-instance v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "Wakelock"

    const-string/jumbo v7, "UNFREEZE_REASON_WAKELOCK"

    invoke-direct {v4, v0, v5, v7, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Binder(1)"

    const-string/jumbo v8, "UNFREEZE_REASON_BINDER_1"

    invoke-direct {v5, v0, v6, v8, v7}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Binder(0)"

    const-string/jumbo v9, "UNFREEZE_REASON_BINDER_0"

    invoke-direct {v6, v0, v7, v9, v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "DeviceIdleOFF"

    const-string/jumbo v10, "UNFREEZE_REASON_DEVICE_IDLE_OFF"

    invoke-direct {v7, v0, v8, v10, v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "StartProcessP"

    const-string/jumbo v11, "UNFREEZE_REASON_START_PROCESS"

    invoke-direct {v8, v0, v9, v11, v10}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "LaunchingProvider"

    const-string/jumbo v12, "UNFREEZE_REASON_LAUNCHING_PROVIDER"

    invoke-direct {v9, v0, v10, v12, v11}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "ReceivingIntent"

    const-string/jumbo v13, "UNFREEZE_REASON_RECEIVING_INTENT"

    invoke-direct {v10, v0, v11, v13, v12}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "ExecutingService"

    const-string/jumbo v14, "UNFREEZE_REASON_EXECUITNG_SERVICE"

    invoke-direct {v11, v0, v12, v14, v13}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v14, "UidActive"

    const-string/jumbo v15, "UNFREEZE_REASON_UIDACTIVE"

    invoke-direct {v12, v0, v13, v15, v14}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v15, "startService"

    move-object/from16 v16, v1

    const-string/jumbo v1, "UNFREEZE_REASON_STARTSERVICE"

    invoke-direct {v13, v0, v14, v1, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v15, "bindService"

    move-object/from16 v17, v2

    const-string/jumbo v2, "UNFREEZE_REASON_BINDSERVICE"

    invoke-direct {v14, v0, v1, v2, v15}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "activity"

    move-object/from16 v18, v3

    const-string/jumbo v3, "UNFREEZE_REASON_ACTIVITY"

    invoke-direct {v15, v0, v1, v3, v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "broadcast"

    move-object/from16 v19, v4

    const-string/jumbo v4, "UNFREEZE_REASON_BROADCAST"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "provider"

    move-object/from16 v20, v0

    const-string/jumbo v0, "UNFREEZE_REASON_PROVIDER"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "unbindService"

    move-object/from16 v21, v1

    const-string/jumbo v1, "UNFREEZE_REASON_UNBINDSERVICE"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "startProcess"

    move-object/from16 v22, v0

    const-string/jumbo v0, "UNFREEZE_REASON_STARTPROCESS"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "ServiceANR"

    move-object/from16 v23, v1

    const-string/jumbo v1, "UNFREEZE_REASON_SERVICEANR"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "Signal"

    move-object/from16 v24, v0

    const-string/jumbo v0, "UNFREEZE_REASON_SIGNAL"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Cfb"

    move-object/from16 v25, v1

    const-string/jumbo v1, "UNFREEZE_REASON_CFB"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "procstate"

    move-object/from16 v26, v0

    const-string/jumbo v0, "UNFREEZE_REASON_PROC_STATE"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "OLAF:"

    move-object/from16 v27, v1

    const-string/jumbo v1, "UNFREEZE_REASON_OLAF"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "None"

    move-object/from16 v28, v0

    const-string/jumbo v0, "UNFREEZE_REASON_NONE"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move-object/from16 v25, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v24

    move-object/from16 v24, v28

    filled-new-array/range {v1 .. v25}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    return-void
.end method

.method public static reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 6

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->UNFREEZE_REASON_NONE:Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    iget-object v5, v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->unfreezeType:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 1

    const-class v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    return-object v0
.end method


# virtual methods
.method public final getTypeNum()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->typeNum:I

    return p0
.end method

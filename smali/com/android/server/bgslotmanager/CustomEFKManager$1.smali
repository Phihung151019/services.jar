.class public final Lcom/android/server/bgslotmanager/CustomEFKManager$1;
.super Landroid/os/CountDownTimer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    const-wide/32 v0, 0x2bf20

    const-wide/16 v2, 0x3a98

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V
    .locals 0

    iput p6, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method private final onTick$com$android$server$bgslotmanager$CustomEFKManager$2(J)V
    .locals 0

    return-void
.end method

.method private final onTick$com$android$server$bgslotmanager$CustomEFKManager$3(J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iget v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    const-string/jumbo v1, "sys.sysctl.watermark_scale_factor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    return-void

    :pswitch_1
    const-string v0, "DynamicHiddenApp_CustomEFKManager"

    const-string/jumbo v1, "setEFKBoostRestoreTimer onfinish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTick(J)V
    .locals 2

    iget p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x2bf20

    cmp-long p1, p1, v0

    const-string p2, "DynamicHiddenApp_CustomEFKManager"

    if-ltz p1, :cond_0

    const-string/jumbo p1, "setEFKBoostRestoreTimer onTick after 3minutes"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "setEFKBoostRestoreTimer onTick"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

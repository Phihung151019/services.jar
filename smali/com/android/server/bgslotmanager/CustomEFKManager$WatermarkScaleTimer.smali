.class public final Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;
.super Landroid/os/CountDownTimer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public count:I

.field public final reserve:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    iput p6, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    const/4 p1, 0x0

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iget v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    iget v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    if-nez v0, :cond_4

    const/16 v0, 0x2020

    filled-new-array {v0}, [I

    move-result-object v0

    new-array p2, p2, [J

    const-wide/16 v2, 0x0

    aput-wide v2, p2, p1

    const/4 v2, 0x0

    const-string v3, "/proc/sys/vm/watermark_scale_factor"

    invoke-static {v3, v0, v2, p2, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v2, p2, p1

    long-to-int p2, v2

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iget v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-le v1, p2, :cond_2

    iget v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ge v1, p2, :cond_4

    iget v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    if-ge v0, v1, :cond_4

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iput p2, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "curWatermarkScale : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iget v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    const-string v1, "DynamicHiddenApp_CustomEFKManager"

    invoke-static {p2, v0, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    iput v0, p2, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    iput-boolean p1, p2, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    :goto_1
    return-void
.end method

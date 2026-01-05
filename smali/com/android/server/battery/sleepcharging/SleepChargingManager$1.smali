.class public final Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final synthetic val$batteryLevel:I

.field public final synthetic val$plugType:I

.field public final synthetic val$secondsToFullCharge:J


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iput p2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    iput p3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    iput-wide p4, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    iput v1, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mPlugType:I

    iget v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    iput v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mBatteryLevel:I

    iget-wide v2, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    iput-wide v2, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSecondsToFullCharge:J

    const-string/jumbo v2, "[SS]SleepChargingManager"

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    iget-wide v5, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[updateChargingInfo]Started mChargeStartTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-wide v3, v1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    invoke-static {v0, v3, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-wide v5, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    iput-wide v3, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mChargeStartTime:J

    const-string/jumbo v0, "[updateChargingInfo]End mChargeStartTime"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-boolean v1, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsSleepCharging:Z

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mIsUserDismissSleepCharging:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v0}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[updateChargingInfo]plugType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$plugType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,batteryLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,secondsToFullCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->val$secondsToFullCharge:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-object v0, v0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$3:J

    iput-object p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$4:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$3:J

    iput-object p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$4:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/telephony/ModemActivityInfo;

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$2:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$3:J

    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$4:Landroid/app/usage/NetworkStatsManager;

    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-wide/16 v4, -0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/os/connectivity/WifiActivityEnergyInfo;

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$2:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$3:J

    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;->f$4:Landroid/app/usage/NetworkStatsManager;

    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-wide/16 v4, -0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

.field public mLedStatus:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e011e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0120

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e011b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e011d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e011c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0121

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e011f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    return-void
.end method


# virtual methods
.method public final updateLightsLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v4, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const/4 v5, 0x4

    const-string v6, "BatteryService"

    const/4 v7, 0x0

    if-ne v5, v4, :cond_3

    const/4 v5, 0x3

    if-eq v5, v2, :cond_1

    const/4 v5, 0x6

    if-eq v5, v2, :cond_1

    const/4 v5, 0x7

    if-eq v5, v2, :cond_1

    const/16 v5, 0x8

    if-ne v5, v2, :cond_3

    :cond_1
    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    if-eqz v2, :cond_3

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v2, 0xb

    if-eq v2, v1, :cond_2

    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "turn on LED for not charging"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "stay LED for not charging"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v2, 0x2

    if-ne v2, v4, :cond_5

    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    if-nez v2, :cond_5

    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    if-eqz v2, :cond_5

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v2, 0xa

    if-eq v2, v1, :cond_4

    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "turn on LED for charging"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "stay LED for charging"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v2, 0x5

    if-ne v2, v4, :cond_7

    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    if-eqz v2, :cond_7

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v2, 0xe

    if-eq v2, v1, :cond_6

    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "turn on LED for fully charged"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "stay LED for fully charged"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget v2, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v3, v2, :cond_9

    iget-boolean v2, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    if-nez v2, :cond_9

    iget-boolean v1, v1, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    const/16 v2, 0xd

    if-eq v2, v1, :cond_8

    invoke-virtual {v0, v7, v2, v7, v7}, Lcom/android/server/lights/LightsService$LightImpl;->setFlashing(IIII)V

    iput v2, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "turn on LED for low battery"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "stay LED for low battery"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget v1, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/android/server/lights/LightsService$LightImpl;->turnOff()V

    iput v7, p0, Lcom/android/server/BatteryService$Led;->mLedStatus:I

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "turn off LED"

    invoke-static {v6, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-void
.end method

.class public final Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;
.super Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# instance fields
.field public mLastActivatedTime:Ljava/time/LocalDateTime;

.field public final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p1, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    return-void
.end method


# virtual methods
.method public final onActivated(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public final onStart()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    move-object v3, v2

    check-cast v3, Lcom/android/server/twilight/TwilightService$1;

    invoke-virtual {v3, p0, v1}, Lcom/android/server/twilight/TwilightService$1;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    check-cast v2, Lcom/android/server/twilight/TwilightService$1;

    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    check-cast v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-virtual {v0, p0}, Lcom/android/server/twilight/TwilightService$1;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public final onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onTwilightStateChanged: isNight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public final updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_1

    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v0

    :cond_1
    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p0

    if-eq p0, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    return-void
.end method

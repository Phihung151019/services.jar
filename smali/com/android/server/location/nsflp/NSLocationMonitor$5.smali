.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    return-void
.end method


# virtual methods
.method public final onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 10

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDeviceActivityDetectorContext()Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getActivity()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getResult()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v2, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    sget-object v3, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getDuration()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const-string/jumbo v2, "onSemContextChanged, activity : "

    const-string v4, " result : "

    const-string v5, " movement : "

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "NSLocationMonitor"

    invoke-static {v2, p1, v4}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    iget-object v5, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    sget-object v6, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    sget-object v7, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-ne v5, v6, :cond_3

    if-ne v1, v9, :cond_1

    const-string/jumbo p0, "Support device_activity_detector old algorithm"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    goto :goto_1

    :cond_1
    if-ne v1, v8, :cond_2

    const-string/jumbo p0, "Support device_activity_detector new algorithm"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    :goto_1
    iget-object p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->SUPPORT_ALGORITHM_TYPE:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string/jumbo p0, "Not support device_activity_detector algorithm"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mSupportAlgorithm:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    sget-object p0, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    invoke-virtual {v2, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    return-void

    :cond_3
    if-eq v1, v9, :cond_d

    if-ne v1, v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    if-ne v1, v6, :cond_5

    const-string/jumbo p1, "SENSOR OUT"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$5;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    sget-object p1, Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;->SENSOR_OUT:Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->disableDeviceActivity(Lcom/android/server/location/nsflp/NSLocationMonitor$DEVICE_ACTIVITY_ERROR_CODE;)V

    return-void

    :cond_5
    if-ne v5, v3, :cond_6

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "result"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "movement"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->MOTION_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void

    :cond_6
    if-ne v5, v7, :cond_c

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-ne v0, p1, :cond_a

    if-ne v1, p1, :cond_8

    iget-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-nez p0, :cond_7

    invoke-virtual {v2, p1}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    :cond_7
    iput-boolean p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    return-void

    :cond_8
    const/4 p1, 0x2

    if-ne v1, p1, :cond_d

    iget-boolean p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-eqz p1, :cond_9

    invoke-virtual {v2, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    :cond_9
    iput-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    return-void

    :cond_a
    if-ne v1, p1, :cond_d

    iget-boolean p1, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    if-eqz p1, :cond_b

    invoke-virtual {v2, p0}, Lcom/android/server/location/nsflp/NSLocationMonitor;->sendStationaryInfo(Z)V

    :cond_b
    iput-boolean p0, v2, Lcom/android/server/location/nsflp/NSLocationMonitor;->mIsStationary:Z

    return-void

    :cond_c
    const-string/jumbo p0, "onSemContextChanged, algorithm is not supported"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_2
    return-void
.end method

.class public final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method public constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    iget-boolean v3, v2, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v3, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v4, v2, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    iget-object v2, v2, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v5, 0x100

    invoke-virtual {v2, v5}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    iget-object v2, v2, Lcom/android/server/GestureLauncherService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-interface {v2, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v2, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    iget-wide v7, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    sub-long v7, v5, v7

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    long-to-double v7, v7

    aget v4, v1, v4

    float-to-double v9, v4

    mul-double/2addr v9, v7

    double-to-long v9, v9

    aget v3, v1, v3

    float-to-double v3, v3

    mul-double/2addr v7, v3

    double-to-long v3, v7

    const/4 v7, 0x2

    aget v1, v1, v7

    float-to-int v1, v1

    iget-wide v7, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    sub-long v7, v5, v7

    iget-wide v11, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    sub-long v11, v9, v11

    iget-wide v13, v2, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    sub-long v13, v3, v13

    iget v2, v2, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    sub-int v2, v1, v2

    const-wide/16 v15, 0x0

    cmp-long v17, v7, v15

    if-ltz v17, :cond_2

    cmp-long v17, v11, v15

    if-ltz v17, :cond_2

    cmp-long v15, v13, v15

    if-gez v15, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v7, v8, v11, v2}, [Ljava/lang/Object;

    move-result-object v2

    const v7, 0x9ca4

    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    iput-wide v5, v0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    iput-wide v9, v0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    iput-wide v3, v0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    iput v1, v0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    :cond_2
    :goto_0
    return-void
.end method

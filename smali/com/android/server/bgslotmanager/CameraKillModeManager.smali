.class public final Lcom/android/server/bgslotmanager/CameraKillModeManager;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static CAMERA_DHA_VER:I


# instance fields
.field public dha_camera_map:Ljava/util/LinkedHashMap;

.field public dha_cameraclientexcept_map:Ljava/util/HashMap;

.field public isOriginBG:Z

.field public mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

.field public mCamKillStartTime:I

.field public mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

.field public mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

.field public mMinFreeMax:F

.field public mSzDHAThresholdRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "cam_dha_ver"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    sget v4, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    if-nez v4, :cond_0

    if-eqz v1, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-boolean v6, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    const-string v7, "DynamicHiddenApp_CameraKillModeManager"

    if-eqz v6, :cond_1

    const-string v6, "Camera Callback on DHA [id] "

    const-string v8, " [faceing] "

    const-string v9, " [newState] "

    move/from16 v10, p2

    invoke-static {v10, v6, v1, v8, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " [clientName] "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/32 v8, 0x927c0

    cmp-long v1, v4, v8

    const/4 v6, 0x1

    if-ltz v1, :cond_4

    sget v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_4

    const-string/jumbo v1, "com.sec.android.app.camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->setState(IZ)V

    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    iget v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    iget-object v1, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    iget-boolean v7, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    if-nez v7, :cond_4

    iput-boolean v6, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    iget-object v1, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    iget v7, v1, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v1, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {v1}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    const-string v1, "DynamicHiddenApp_BGSlotManager"

    const-string v7, "CameraBGSlot Recovered"

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    if-ne v9, v6, :cond_4

    iget-object v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mInfo:Lcom/android/server/bgslotmanager/MemInfoGetter;

    iget-object v10, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    iget-object v10, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v10

    iget-object v12, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v12}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v12

    iget-object v14, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getRbinTotalSize()J

    move-result-wide v14

    iget-object v9, v9, Lcom/android/server/bgslotmanager/MemInfoGetter;->mInfoInner:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getRbinAllocedSize()J

    move-result-wide v16

    add-long/2addr v10, v12

    sub-long v14, v14, v16

    sub-long/2addr v10, v14

    const-string v9, "Available Mem: "

    const-string v12, " CAM TH "

    invoke-static {v9, v10, v11, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mMinFreeMax:F

    iget v13, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    mul-float/2addr v12, v13

    float-to-long v12, v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mMinFreeMax:F

    iget v9, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    mul-float/2addr v7, v9

    float-to-long v12, v7

    cmp-long v7, v10, v12

    if-gez v7, :cond_4

    iget-object v7, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mBGSlotManager:Lcom/android/server/bgslotmanager/BGSlotManager;

    iget v9, v7, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    or-int/2addr v9, v6

    iput v9, v7, Lcom/android/server/bgslotmanager/BGSlotManager;->BGSlotState:I

    invoke-virtual {v7}, Lcom/android/server/bgslotmanager/BGSlotManager;->changeBGSlot()V

    iput-boolean v8, v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    :cond_4
    :goto_0
    iget v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCamKillStartTime:I

    int-to-long v7, v1

    cmp-long v1, v4, v7

    if-ltz v1, :cond_8

    sget v1, Lcom/android/server/bgslotmanager/CameraKillModeManager;->CAMERA_DHA_VER:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "vendor."

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "client."

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->setState(IZ)V

    iget-object v0, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    iget-object v2, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    iget-object v2, v2, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v2, :cond_8

    iget v0, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    invoke-static {v0, v4, v1}, Lcom/android/server/am/DynamicHiddenApp;->setLmkdCameraKillBoost(III)V

    :cond_8
    :goto_2
    return-void
.end method

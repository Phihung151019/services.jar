.class public abstract Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public static isinitClass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->isOriginBG:Z

    const-string/jumbo v1, "cam_kill_start_tm"

    const-string v2, "120000"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCamKillStartTime:I

    const-string/jumbo v1, "dha_th_rate"

    const-string v2, "2.0"

    invoke-static {v1, v2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mSzDHAThresholdRate:F

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_camera_map:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->dha_cameraclientexcept_map:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    invoke-direct {v1, v0}, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;-><init>(Lcom/android/server/bgslotmanager/CameraKillModeManager;)V

    iput-object v1, v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;->mCameraKillModeOperator:Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;

    sput-object v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->isinitClass:Z

    return-void
.end method

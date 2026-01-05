.class public final Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public cameraState:I

.field public prevCameraState:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CameraKillModeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->this$0:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    return-void
.end method


# virtual methods
.method public final setState(IZ)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->prevCameraState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-ne p1, v1, :cond_1

    iput v1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    if-ne p1, v2, :cond_3

    iput v2, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iput v0, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->cameraState:I

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    iput p1, p0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeOperator;->prevCameraState:I

    :cond_6
    return-void
.end method

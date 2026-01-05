.class public final Lcom/android/server/biometrics/log/OperationContextExt;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

.field public mDockState:I

.field public mFoldState:I

.field public final mIsBP:Z

.field public mIsDisplayOn:Z

.field public final mIsMandatoryBiometrics:Z

.field public mOrientation:I

.field public mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    iput-boolean p4, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    const/4 p0, 0x2

    if-ne p3, p0, :cond_0

    new-instance p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;-><init>()V

    invoke-static {p0}, Landroid/hardware/biometrics/common/OperationState;->fingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)Landroid/hardware/biometrics/common/OperationState;

    move-result-object p0

    iput-object p0, p1, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    return-void

    :cond_0
    const/16 p0, 0x8

    if-ne p3, p0, :cond_1

    new-instance p0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;-><init>()V

    invoke-static {p0}, Landroid/hardware/biometrics/common/OperationState;->faceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)Landroid/hardware/biometrics/common/OperationState;

    move-result-object p0

    iput-object p0, p1, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    :cond_1
    return-void
.end method


# virtual methods
.method public final update(Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    check-cast p1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget v1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    iput-boolean v5, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v1, v3, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v3

    :cond_4
    :goto_1
    iput v4, v0, Landroid/hardware/biometrics/common/OperationContext;->displayState:I

    iget v1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    if-eq v1, v3, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v6, :cond_7

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    move v6, v3

    :cond_7
    :goto_2
    iput v6, v0, Landroid/hardware/biometrics/common/OperationContext;->foldState:I

    iput-boolean p2, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    iget-object p2, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object p2, p2, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    invoke-virtual {p2}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object p2

    iget-boolean v0, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    iput-boolean v0, p2, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    :cond_8
    iget-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    if-eqz p2, :cond_9

    iget-object p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    iput-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object p2, p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p2

    iput p2, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-byte v3, p2, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    goto :goto_3

    :cond_9
    iget-object p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    iput-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object p2, p2, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p2

    iput p2, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-byte v5, p2, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput v2, p2, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iput-byte v2, p2, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    :goto_3
    iget-object p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getState()I

    move-result p2

    if-ne p2, v5, :cond_b

    move v2, v3

    :cond_b
    iput-boolean v2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    iget p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    iget p2, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    iget-object p1, p1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    return-void
.end method

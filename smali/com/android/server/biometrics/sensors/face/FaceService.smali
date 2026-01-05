.class public Lcom/android/server/biometrics/sensors/face/FaceService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mFaceProvider:Ljava/util/function/Function;

.field public final mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

.field public final mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

.field final mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    new-instance v3, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v5, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/FaceService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/IBiometricService;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;",
            ">;",
            "Ljava/util/function/Supplier<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    new-instance v1, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>(Landroid/os/UserManager;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    new-instance p1, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    invoke-direct {p1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance p1, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    invoke-direct {p1, v0, p3}, Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;-><init>(Landroid/hardware/face/IFaceService;Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    new-instance p3, Lcom/android/server/biometrics/sensors/face/FaceService$1;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    :goto_0
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProvider:Ljava/util/function/Function;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/FaceService;)V

    :goto_1
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mFaceProviderFunction:Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;

    return-void
.end method

.method public static native acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;
.end method

.method public static getDeclaredInstances()[Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/hardware/biometrics/face/IFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before:getDeclaredInstances: IFace instance found, a.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "After:getDeclaredInstances: a.length="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-static {v1, v3, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object v0
.end method

.method public static native releaseSurfaceHandle(Landroid/os/NativeHandle;)V
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mRegistry:Lcom/android/server/biometrics/sensors/face/FaceServiceRegistry;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "FaceService"

    const-string/jumbo p1, "Null provider for onBootPhase"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "face"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceService;->mServiceWrapper:Lcom/android/server/biometrics/sensors/face/FaceService$FaceServiceWrapper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public final mAuthenticationSyncLock:Ljava/lang/Object;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

.field public final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

.field public final mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

.field final mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;


# direct methods
.method public static -$$Nest$mcanUseFingerprint(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/lang/String;Ljava/lang/String;ZIII)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.USE_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/android/server/biometrics/Utils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p6

    const/4 v0, 0x0

    const-string/jumbo v1, "Rejecting "

    const-string v2, "FingerprintService"

    if-nez p6, :cond_3

    const-string p0, "; not a current user or profile"

    invoke-static {v1, p1, p0, v2}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x4e

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, p2

    move v5, p4

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x37

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    if-eqz p3, :cond_5

    invoke-virtual {p0, v5, p5}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->isForeground(II)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "; not in foreground"

    invoke-static {v1, v6, p0, v2}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_6
    const-string p0, "; permission denied"

    invoke-static {v1, v6, p0, v2}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static -$$Nest$mgetEnrolledFingerprintsDeprecated(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;ILjava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->getSingleProvider()Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "Null provider for getEnrolledFingerprintsDeprecated, caller: "

    const-string p1, "FingerprintService"

    invoke-static {p0, p2, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object v2

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda2;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/IBiometricService;",
            ">;",
            "Ljava/util/function/Supplier<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;",
            ">;",
            "Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationSyncLock:Ljava/lang/Object;

    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    invoke-direct {p5, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAidlInstanceNameSupplier:Ljava/util/function/Supplier;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    invoke-direct {p2}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    new-instance p2, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance p2, Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;-><init>(Landroid/os/UserManager;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    new-instance p2, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    invoke-direct {p2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;

    invoke-direct {p6, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    :goto_0
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mFingerprintProviderFunction:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$FingerprintProviderFunction;

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->getFpLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    invoke-direct {p2, p5, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Ljava/util/function/Supplier;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mRegistry:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;

    invoke-direct {p3, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;)V

    invoke-virtual {p2, p3}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->addAllRegisteredCallback(Landroid/os/IInterface;)V

    new-instance p3, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    sget-object p4, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p4}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;

    invoke-direct {p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;-><init>()V

    invoke-direct {p3, p1, p4, p2, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;)V

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    return-void
.end method

.method public static getDeclaredInstances()[Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before:getDeclaredInstances: IFingerprint instance found, a.length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "After:getDeclaredInstances: a.length="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v0

    invoke-static {v1, v3, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getFpLooper()Landroid/os/Looper;
    .locals 0

    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getServiceExtImpl()Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;

    return-object p0
.end method

.method public getUserOrWorkProfileId(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public isForeground(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result p0

    return p0
.end method

.method public final onBootPhase(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "fingerprint"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;->mServiceWrapper:Landroid/hardware/fingerprint/IFingerprintService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

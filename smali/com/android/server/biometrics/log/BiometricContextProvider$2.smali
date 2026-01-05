.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$2;
.super Landroid/hardware/biometrics/IBiometricContextListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayStateChanged(I)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "DISPLAY_STATE_AOD"

    goto :goto_0

    :cond_1
    const-string v0, "DISPLAY_STATE_SCREENSAVER"

    goto :goto_0

    :cond_2
    const-string v0, "DISPLAY_STATE_NO_UI"

    goto :goto_0

    :cond_3
    const-string v0, "DISPLAY_STATE_LOCKSCREEN"

    goto :goto_0

    :cond_4
    const-string v0, "DISPLAY_STATE_UNKNOWN"

    :goto_0
    const-string/jumbo v1, "onDisplayStateChanged: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricContextProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    if-eq p1, v0, :cond_6

    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_6
    return-void
.end method

.method public final onFoldChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    return-void
.end method

.method public final onHardwareIgnoreTouchesChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$2;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    return-void
.end method

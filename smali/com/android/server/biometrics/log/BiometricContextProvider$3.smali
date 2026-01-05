.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$3;
.super Lcom/android/internal/statusbar/ISessionListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {p0}, Lcom/android/internal/statusbar/ISessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p1

    if-eq p0, p1, :cond_0

    const-string p0, "BiometricContextProvider"

    const-string/jumbo p1, "session id mismatch"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    invoke-direct {v0, p2}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;-><init>(Lcom/android/internal/logging/InstanceId;)V

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public final synthetic Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

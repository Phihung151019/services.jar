.class public final synthetic Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    check-cast p1, Lcom/android/server/biometrics/log/OperationContextExt;

    check-cast p2, Ljava/util/function/Consumer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean v0, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    invoke-virtual {p1, p0, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

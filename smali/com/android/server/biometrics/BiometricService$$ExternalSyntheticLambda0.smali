.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_0

    iget p0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

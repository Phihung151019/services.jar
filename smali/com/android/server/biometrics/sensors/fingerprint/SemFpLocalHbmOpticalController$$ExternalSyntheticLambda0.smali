.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->mStartPhysicalDisplayState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpLocalHbmOpticalController;->handleLocalHbm(I)V

    :cond_0
    return-void
.end method

.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;-><init>(Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    return-void
.end method

.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$2:I

    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$3:J

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$1:I

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$2:I

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$3:J

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    invoke-static {v6}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v5

    iget-boolean v7, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authEndedFor(JIIIZ)V

    return-void
.end method

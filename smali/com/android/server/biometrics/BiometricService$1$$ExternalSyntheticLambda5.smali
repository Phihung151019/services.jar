.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:[B

.field public final synthetic f$4:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$2:I

    iput-object p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$3:[B

    iput-object p6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iget-wide v2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$1:J

    iget v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$2:I

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$3:[B

    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(JI[BLandroid/os/Bundle;)V

    return-void
.end method

.class public final Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    iput p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    return-void
.end method

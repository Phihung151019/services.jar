.class public final Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBiometricType:I

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;->mBiometricType:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method

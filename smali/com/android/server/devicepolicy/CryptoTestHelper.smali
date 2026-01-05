.class public abstract Lcom/android/server/devicepolicy/CryptoTestHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static runAndLogSelfTest()V
    .locals 2

    invoke-static {}, Lcom/android/server/devicepolicy/CryptoTestHelper;->runSelfTest()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3346f

    invoke-static {v1, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method private static native runSelfTest()I
.end method

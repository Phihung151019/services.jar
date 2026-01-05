.class public final synthetic Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[B

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    iput p2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    iput p5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    iget v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    iget p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    const-string v4, "Failed to reset password due to constraint violation: "

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    iget-object v6, v6, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    const-string v6, "DualDARPolicy"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    const-string/jumbo p0, "resetPasswordWithTokenForInner : Not permitted while device insecure"

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo p0, "resetPasswordWithTokenForInner : Not permitted for empty password"

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    if-eqz v1, :cond_7

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v5

    :goto_1
    :try_start_0
    invoke-static {v1, v7, v5}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    goto :goto_4

    :goto_2
    if-eqz v5, :cond_6

    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0

    :cond_7
    :goto_4
    iget-object v0, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {v0, v2, v3, p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

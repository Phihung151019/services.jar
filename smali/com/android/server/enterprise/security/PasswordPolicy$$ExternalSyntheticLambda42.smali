.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[B

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$2:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$4:[B

    iput p6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$5:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$1:I

    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$2:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$3:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$4:[B

    iget v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$5:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    new-instance p0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    const/high16 v1, 0x70000

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "resetPassword declined because Lock Quality set to Smartcard for user = "

    const-string/jumbo v0, "PasswordPolicy"

    invoke-static {v7, p0, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual/range {v2 .. v7}, Landroid/app/admin/DevicePolicyManagerInternal;->resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

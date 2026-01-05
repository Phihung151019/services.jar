.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JII)V
    .locals 0

    iput p6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    iput-wide p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$2:J

    iput p5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    iget-wide v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$2:J

    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$3:I

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    iget-wide v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$2:J

    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$3:I

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

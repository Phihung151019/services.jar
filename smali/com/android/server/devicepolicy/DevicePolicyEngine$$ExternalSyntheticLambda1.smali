.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;III)V
    .locals 0

    iput p7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$4:I

    iput p6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$5:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$4:I

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$5:I

    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v6

    iget v7, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_CHANGED in package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const-string v1, "DevicePolicyEngine"

    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v3, v2}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    const/4 v3, -0x1

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v7, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, -0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x3

    :goto_1
    const-string/jumbo v4, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v1, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$4:I

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;->f$5:I

    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v6

    iget v7, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_SET_RESULT in package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    const-string v1, "DevicePolicyEngine"

    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v3, v6}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    iget v2, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    const/4 v3, -0x1

    if-ne v4, v3, :cond_5

    goto :goto_3

    :cond_5
    if-ne v2, v4, :cond_6

    goto :goto_4

    :cond_6
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_7

    const/4 v3, -0x2

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v3, -0x3

    :goto_4
    const-string/jumbo v4, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {v6, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v1, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

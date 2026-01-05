.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/admin/PolicyValue;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public final synthetic f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$2:Landroid/app/admin/PolicyValue;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iget v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$1:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$2:Landroid/app/admin/PolicyValue;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v5}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eq v5, v6, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    if-ne v7, v6, :cond_0

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    if-eqz v3, :cond_1

    move v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    goto :goto_0

    :cond_1
    move v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.class public final synthetic Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/app/role/RoleManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/UserHandle;

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/role/RoleManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/role/RoleManager;

    iput-object p2, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    iput-object p5, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    iput p6, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$3:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$4:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda0;->f$5:I

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/server/companion/utils/RolesUtils$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

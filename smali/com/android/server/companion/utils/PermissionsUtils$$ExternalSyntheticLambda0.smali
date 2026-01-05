.class public final synthetic Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$1:I

    iput-object p2, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    sget-object v2, Lcom/android/server/companion/utils/RolesUtils;->NLS_PROFILES:Ljava/util/Set;

    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v0, v2, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;


# virtual methods
.method public final getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 1

    sget-object p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    const-string/jumbo v0, "NoWaitRotationPackageSetting"

    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->deleteLegacyFile(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->ASPECT_RATIO_DIRECTORY:Ljava/lang/String;

    const-string/jumbo v0, "PackageMap"

    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->deleteLegacyFile(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CustomAspectRatioPackageMap"

    invoke-static {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->deleteLegacyFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

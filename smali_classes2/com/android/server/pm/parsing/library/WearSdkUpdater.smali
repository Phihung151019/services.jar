.class public final Lcom/android/server/pm/parsing/library/WearSdkUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .locals 0

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object p2

    const-string/jumbo p3, "wear-sdk"

    invoke-static {p0, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2, p3}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-interface {p1, p3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void
.end method
